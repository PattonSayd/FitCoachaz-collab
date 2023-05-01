import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'account_name_event.dart';
part 'account_name_state.dart';

class AccountNameBloc extends Bloc<AccountNameEvent, AccountNameState> {
  AccountNameBloc() : super(const AccountNameState.initial()) {
    on<NameChangedEvent>(_onNameChanged);
    on<NameUnfocusedEvent>(_onNameUnfocused);
    on<SurnChangedEvent>(_onSurnChanged);
    on<SurnUnfocusedEvent>(_onSurnUnfocused);
  }

  FutureOr<void> _onNameChanged(
    NameChangedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final name = ValidateForm(event.name);
    emit(state.copyWith(name: name));
  }

  FutureOr<void> _onNameUnfocused(
    NameUnfocusedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final form = ValidateForm(state.name);
    emit(state.copyWith(nameForm: form));
  }

  FutureOr<void> _onSurnChanged(
    SurnChangedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    emit(state.copyWith(surn: event.surn));
  }

  FutureOr<void> _onSurnUnfocused(
    SurnUnfocusedEvent event,
    Emitter<AccountNameState> emit,
  ) {
    final form = ValidateForm(state.surn);
    // final status = state.nameForm.valid && state.surnForm.valid
    //     ? AccStatus.valid
    //     : AccStatus.invalid;
    emit(state.copyWith(surnForm: form));
  }
}
