part of 'account_name_bloc.dart';

enum AccStatus { unknown, valid, invalid, loading, success }

class AccountNameState extends Equatable {
  const AccountNameState._({
    this.name = const NameFormz.pure(),
    this.surn = const SurnameFormz.pure(),
    this.status = FormzSubmissionStatus.canceled,
    this.error,
  });

  final NameFormz name;
  final SurnameFormz surn;
  final FormzSubmissionStatus status;
  final String? error;

  const AccountNameState.initial() : this._();

  @override
  List<Object> get props => [name, surn, status];

  AccountNameState copyWith({
    NameFormz? name,
    SurnameFormz? surn,
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
