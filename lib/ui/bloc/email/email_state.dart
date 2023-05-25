part of 'email_bloc.dart';

enum EmailStatus {
  unknown,
  valid,
  invalid,
  loading,
  success,
  sendEmailSuccess,
  error,
}

class EmailState extends Equatable {
  const EmailState._({
    this.status = EmailStatus.unknown,
    this.email,
    this.error,
  });

  final EmailStatus status;
  final String? error;
  final String? email;

  const EmailState.initial() : this._();
  const EmailState.loading() : this._(status: EmailStatus.loading);
  const EmailState.valid() : this._(status: EmailStatus.valid);
  const EmailState.invalid() : this._(status: EmailStatus.invalid);
  const EmailState.sendEmailSuccess(String email)
      : this._(status: EmailStatus.sendEmailSuccess, email: email);
  const EmailState.success() : this._(status: EmailStatus.success);
  const EmailState.error(String error)
      : this._(error: error, status: EmailStatus.error);

  @override
  List<Object> get props => [status];
}
