part of 'account_name_bloc.dart';

enum AccStatus { unknown, valid, invalid, loading, success }

class AccountNameState extends Equatable {
  const AccountNameState._({
    this.name = const Name.pure(),
    this.surn = const Surname.pure(),
    this.status = FormzSubmissionStatus.canceled,
    this.error,
  });

  final Name name;
  final Surname surn;
  final FormzSubmissionStatus status;
  final String? error;

  const AccountNameState.initial() : this._();

  @override
  List<Object> get props => [name, surn, status];

  AccountNameState copyWith({
    Name? name,
    Surname? surn,
    FormzSubmissionStatus? status,
    String? error,
  }) {
    return AccountNameState._(
      name: name ?? this.name,
      surn: surn ?? this.surn,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}

  // const AccountNameState.valid(Formify name)
  //     : this._(name: name, status: AccStatus.valid);
  // const AccountNameState.invalid() : this._(status: AccStatus.invalid);
  // const AccountNameState.loading() : this._(status: AccStatus.loading);
  // const AccountNameState.success() : this._(status: AccStatus.success);
  // const AccountNameState.error(String? msg)
  //     : this._(msg: msg, status: AccStatus.invalid);