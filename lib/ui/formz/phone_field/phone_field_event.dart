part of 'phone_field_bloc.dart';

abstract class RegisterFormEvent extends Equatable {
  const RegisterFormEvent();

  @override
  List<Object> get props => [];
}

class PhoneFieldEvent extends RegisterFormEvent {
  const PhoneFieldEvent({required this.phone});

  final String phone;

  @override
  List<Object> get props => [phone];
}

class PrefixEvent extends RegisterFormEvent {
  const PrefixEvent({required this.prefix});

  final String prefix;

  @override
  List<Object> get props => [prefix];
}

class Submitted extends RegisterFormEvent {
  @override
  List<Object> get props => [];
}
