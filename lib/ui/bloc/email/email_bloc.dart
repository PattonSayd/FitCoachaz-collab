import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/domain/repositories/email_repository.dart';
import 'package:fitcoachaz/logger.dart';

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
      final uid = await _repository.getUserId();
      if (uid == null) {
        throw StateError('User ID is null');
      }
      await _repository.saveEmail(uid, event.email);
      emit(const EmailState.success());
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        emit(const EmailState.error('Sorry, there was a technical error'));
      }
    } catch (e) {
      logger.e(e);
      emit(EmailState.error(e.toString()));
    }
  }
}
