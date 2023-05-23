import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/shared_prefs.dart';
import 'package:fitcoachaz/domain/repositories/email_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter/services.dart';

import '../../../data/services/firebase_dynamic_links_services.dart';

part 'email_event.dart';
part 'email_state.dart';

//change to freezed and Formz
class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc({
    required final EmailRepository repository,
    required final KeyValueStore sharedPrefs,
  })  : _repository = repository,
        _sharedPrefs = sharedPrefs,
        super(const EmailState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<EmailUnfocused>(_onEmailUnfocused);
    on<EmailSubmitted>(_onEmailSubmitted);
    on<RetrieveDynamicLink>(_onRetrieveDynamicLink);
  }

  final EmailRepository _repository;
  final KeyValueStore _sharedPrefs;

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
    // emit(const EmailState.loading());
    try {
      var acs = ActionCodeSettings(
        url: 'https://fitcoachaz.page.link/emailredirect',
        handleCodeInApp: true,
        iOSBundleId: 'com.example.fitcoachaz',
        androidPackageName: 'com.example.fitcoachaz',
        androidMinimumVersion: '12',
      );

      await assemble.auth
          .sendSignInLinkToEmail(
            email: event.email,
            actionCodeSettings: acs,
          )
          .catchError((onError) =>
              logger.wtf('Error sending email verification $onError'))
          .then((value) => logger.wtf('Successfully sent email verification'));

      FirebaseDynamicLinks.instance.onLink.listen((event) {
        logger.wtf('${event.link}');
      }).onError((error) {
        logger.wtf('onLink.onError[$error]');
      });

      // final cred =
      //     FirebaseAuth.instance.isSignInWithEmailLink(dyn!.link.toString());.

      await _sharedPrefs.write<String>(
          TypeStoreKey<String>('EMAIL'), event.email);

      // retrieveDynamicLinkAndSignIn(true);
      add(const RetrieveDynamicLink(coldState: true));

      // if (true) {
      //   try {
      //     final userCredential = await FirebaseAuth.instance
      //         .signInWithEmailLink(email: event.email, emailLink: event.email);

      //     final emailAddress = userCredential.user?.email;

      //     print('Successfully signed in with email link!');
      //   } catch (error) {
      //     print('Error signing in with email link.');
      //   }
      // }

      // final a = assemble.auth.currentUser;

      // final d = assemble.auth.currentUser;

      // await Future.delayed(const Duration(seconds: 5));

      // final uid = await _repository.getUserId();
      // if (uid == null) {
      //   throw StateError('User ID is null');
      // }
      // await _repository.saveEmail(uid, event.email);
      // emit(const EmailState.success());
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

  // FutureOr<void> _onRetrieveDynamicLink(
  //   RetrieveDynamicLink event,
  //   Emitter<EmailState> emit,
  // ) {}

  Future<void> _onRetrieveDynamicLink(
    RetrieveDynamicLink event,
    Emitter<EmailState> emit,
  ) async {
    try {
      String email =
          await _sharedPrefs.read<String>(TypeStoreKey<String>('EMAIL')) ?? '';

      if (email.isEmpty) {
        logger.w('email is empty');
      }

      PendingDynamicLinkData? dynamicLinkData;
      await Future.delayed(const Duration(seconds: 3));
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

        await _sharedPrefs.write<String>(TypeStoreKey<String>('EMAIL'), '');

        if (validLink) {
          final userCredential = await assemble.auth.signInWithEmailLink(
            email: email,
            emailLink: deepLink.toString(),
            //navigation
          );
          if (userCredential.user != null) {
            logger.w('retrieveDynamicLinkAndSignIn');
          } else {
            logger.d('userCredential.user is [${userCredential.user}]');
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
