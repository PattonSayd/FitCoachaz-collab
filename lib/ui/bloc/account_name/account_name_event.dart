part of 'account_name_bloc.dart';

abstract class AccountNameEvent extends Equatable {
  const AccountNameEvent();

  @override
  List<Object> get props => [];
}

class NameChangedEvent extends AccountNameEvent {
  const NameChangedEvent({required this.name});

  final String name;

  @override
  List<Object> get props => [name];
}

class SurnChangedEvent extends AccountNameEvent {
  const SurnChangedEvent({required this.surn});

  final String surn;

  @override
  List<Object> get props => [surn];
}

class NameUnfocusedEvent extends AccountNameEvent {}

class SurnUnfocusedEvent extends AccountNameEvent {}

class FormsSubmittedEvent extends AccountNameEvent {}
