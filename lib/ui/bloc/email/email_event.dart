part of 'email_bloc.dart';

abstract class EmailEvent extends Equatable {
  const EmailEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends EmailEvent {
  final String email;

  const EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends EmailEvent {
  final String email;
  const EmailUnfocused({
    required this.email,
  });
}

class EmailSubmitted extends EmailEvent {
  const EmailSubmitted({
    required this.email,
  });

  final String email;

  @override
  List<Object> get props => [email];
}
