part of 'register_bloc.dart';

@immutable
abstract class RegisterState extends Equatable {
  const RegisterState();
}

class RegisterStateInitial extends RegisterState {
  const RegisterStateInitial();

  @override
  List<Object?> get props => [];
}

class RegisterStateLoading extends RegisterState {
  const RegisterStateLoading();
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
