part of 'register_bloc.dart';

@immutable
class RegisterState extends Equatable {
  const RegisterState();

  factory RegisterState.form() {
    return RegisterState();
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class RegisterStateInitial extends RegisterState {
  const RegisterStateInitial();

  @override
  List<Object?> get props => [];
}

class RegisterStateLoading extends RegisterState {
  const RegisterStateLoading();

  int get root => 1;

  @override
  List<Object?> get props => [];
}

class RegisterStateLoaded extends RegisterState {
  const RegisterStateLoaded();
  @override
  List<Object?> get props => [];
}

class RegisterStateError extends RegisterState {
  const RegisterStateError({required this.error});

  final String error;

  @override
  List<Object?> get props => [error];
}

class RegisterStateOTPSentSuccess extends RegisterState {
  const RegisterStateOTPSentSuccess({required this.verificationId});

  final String verificationId;

  @override
  List<Object?> get props => [];
}
