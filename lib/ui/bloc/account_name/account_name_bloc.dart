import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:fitcoachaz/ui/formz/account_name/name_formz.dart';
import 'package:fitcoachaz/ui/formz/account_name/surname_formz.dart';
import 'package:formz/formz.dart';

import '../../../domain/repositories/account_name_repository.dart';
import '../../../logger.dart';

part 'account_name_event.dart';
part 'account_name_state.dart';

//change to freezed and Formz
class AccountNameBloc extends Bloc<AccountNameEvent, AccountNameState> {
  AccountNameBloc({
    required final AccountNameRepository repository,
  })  : _repository = repository,
        super(const AccountNameState.initial()) {
    on<NameChangedEvent>(_onNameChanged);
    on<SurnChangedEvent>(_onSurnChanged);
    on<NameUnfocusedEvent>(_onNameUnfocused);
    on<SurnUnfocusedEvent>(_onSurnUnfocused);
    on<FormsSubmittedEvent>(_onFormsSubmitted);
  }

  final AccountNameRepository _repository;

  FutureOr<void> _onNameChanged(
    NameChangedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final name = NameFormz.dirty(event.name);
    emit(state.copyWith(
      name: name.isValid ? name : NameFormz.pure(event.name),
      status: Formz.validate([name, state.surn])
          ? FormzSubmissionStatus.initial
          : FormzSubmissionStatus.canceled,
    ));
  }

  FutureOr<void> _onSurnChanged(
    SurnChangedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final surn = SurnameFormz.dirty(event.surn);
    emit(state.copyWith(
      surn: surn.isValid ? surn : SurnameFormz.pure(event.surn),
      status: Formz.validate([state.name, surn])
          ? FormzSubmissionStatus.initial
          : FormzSubmissionStatus.canceled,
    ));
  }

  FutureOr<void> _onNameUnfocused(
    NameUnfocusedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final name = NameFormz.dirty(state.name.value);
    emit(state.copyWith(
      name: name,
      status: Formz.validate([name, state.surn])
          ? FormzSubmissionStatus.initial
          : FormzSubmissionStatus.canceled,
    ));
  }

  FutureOr<void> _onSurnUnfocused(
    SurnUnfocusedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final surn = SurnameFormz.dirty(state.surn.value);
    emit(state.copyWith(
      surn: surn,
      status: Formz.validate([state.name, surn])
          ? FormzSubmissionStatus.initial
          : FormzSubmissionStatus.canceled,
    ));
  }

  FutureOr<void> _onFormsSubmitted(
    FormsSubmittedEvent event,
    Emitter<AccountNameState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      final uid = await _repository.getUserId();
      if (uid == null) {
        throw StateError('User ID is null');
      }
      await _repository.saveAccountName(
        uid,
        state.name.value,
        state.surn.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        emit(state.copyWith(error: 'Sorry, there was a technical error'));
      }
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(error: e.toString()));
    }
  }
}
