import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';
import 'package:fitcoachaz/domain/repositories/email_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter/services.dart';

part 'email_event.dart';
part 'email_state.dart';

//change to freezed and Formz
class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc({
    required final EmailRepository repository,
  })  : _repository = repository,
        super(const EmailState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<EmailUnfocused>(_onEmailUnfocused);
    on<EmailSubmitted>(_onEmailSubmitted);
    on<RetrieveDynamicLink>(_onRetrieveDynamicLink);
  }

  final EmailRepository _repository;

  FutureOr<void> _onEmailChanged(
    EmailChanged event,
    Emitter<EmailState> emit,
  ) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final email = event.email.trim();
    if (emailRegex.hasMatch(email)) {
      emit(const EmailState.valid());
    } else {
      emit(const EmailState.initial());
    }
  }

  FutureOr<void> _onEmailUnfocused(
    EmailUnfocused event,
    Emitter<EmailState> emit,
  ) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailRegex.hasMatch(event.email)) {
      emit(const EmailState.invalid());
    }
  }

  FutureOr<void> _onEmailSubmitted(
    EmailSubmitted event,
    Emitter<EmailState> emit,
  ) async {
    emit(const EmailState.loading());
    try {
      final email = event.email.trim();
      await _repository
          .sendEmailVerification(email)
          .catchError((onError) =>
              logger.wtf('Error sending email verification $onError'))
          .then((value) {
        logger.wtf('Successfully sent email verification');
        emit(EmailState.sendEmailSuccess(email));
      });

      FirebaseDynamicLinks.instance.onLink.listen((event) {
        logger.wtf('${event.link}');
      }).onError((error) {
        logger.wtf('onLink.onError[$error]');
      });

      await _repository.setEmailPrefs(email);

      add(const RetrieveDynamicLink(coldState: true));

      // await Future.delayed(const Duration(seconds: 5));
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        emit(const EmailState.error('Sorry, there was a technical error'));
      }
      if (e.code == 'too-many-requests') {
        emit(const EmailState.error(
            'Too many requests, please try again in a while'));
      }
    } catch (e) {
      logger.e(e);
      emit(EmailState.error(e.toString()));
    }
  }

  Future<void> _onRetrieveDynamicLink(
    RetrieveDynamicLink event,
    Emitter<EmailState> emit,
  ) async {
    try {
      final email = await _repository.getEmailPrefs();
      if (email.isEmpty) {
        logger.w('email is empty');
      }

      PendingDynamicLinkData? dynamicLinkData;
      // await Future.delayed(const Duration(seconds: 3));

      Uri? deepLink;
      if (event.coldState) {
        dynamicLinkData = await FirebaseDynamicLinks.instance.getInitialLink();
        if (dynamicLinkData != null) {
          deepLink = dynamicLinkData.link;
        }
      } else {
        dynamicLinkData = await FirebaseDynamicLinks.instance.onLink.first;
        deepLink = dynamicLinkData.link;
      }

      logger.w('deepLink => $deepLink');

      if (deepLink != null) {
        bool validLink =
            assemble.auth.isSignInWithEmailLink(deepLink.toString());

        /// Password- less hack for IOS
        if (!validLink && Platform.isIOS) {
          logger.d('Password- less hack for IOS deepLink is not valid');
          ClipboardData? data = await Clipboard.getData('text/plain');
          if (data != null) {
            logger.d('Get link from Clipboard => ${data.text}');
            final linkData = data.text ?? '';
            final link = Uri.parse(linkData).queryParameters['link'] ?? "";
            logger.d(
              'Parsed Link => $link',
            );
            validLink = assemble.auth.isSignInWithEmailLink(link);
            if (validLink) {
              deepLink = Uri.parse(link);
            }
          }
        }

        await _repository.setEmailPrefs(null);
        final phoneCredential = await _repository.getCredential();

        if (phoneCredential == null) {
          logger.d('No phone credential');
        }

        if (validLink) {
          // final emailCredential =
          //     await FirebaseAuth.instance.signInWithEmailLink(
          //   email: email,
          //   emailLink: deepLink.toString(),
          // );

          final authCredential = EmailAuthProvider.credentialWithLink(
              email: email, emailLink: deepLink.toString());
          try {
            await assemble.auth.currentUser?.linkWithCredential(authCredential);
            const a = 1;
          } catch (error) {
            logger.i("Error linking emailLink credential.");
          }

          // final linkedUser =
          //     phoneCredential?.user?.linkWithCredential(emailCredential);

          final emailAddress = assemble.auth.currentUser?.email;

          if (emailAddress != null) {
            logger.w('Successfully signed in with email link!');
            final credential = assemble.auth.currentUser;
            if (credential == null) {
              throw StateError('User is null');
            }
            await _repository.saveUserCredential(credential);
            emit(const EmailState.success());
          } else {
            logger.d('Error signing in with email link.');
          }
        } else {
          logger.d('Link is not valid');
        }
      } else {
        logger.d('deepLink => [$deepLink]');
      }
    } catch (e, s) {
      logger.e(e.toString(), s.toString());
    }
  }
}
