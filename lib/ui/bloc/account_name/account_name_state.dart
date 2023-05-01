part of 'account_name_bloc.dart';

enum AccStatus { unknown, valid, invalid, loading, success }

class AccountNameState extends Equatable {
  const AccountNameState._({
    this.name = const ValidateForm(''),
    this.surn = const ValidateForm(''),
    this.status = AccStatus.unknown,
    this.error,
  });

  final Formify name;
  final Formify surn;
  final AccStatus status;
  final String? error;

  const AccountNameState.initial() : this._();

  @override
  List<Object> get props => [name, surn, status];

  AccountNameState copyWith({
    Formify? name,
    Formify? surn,
    AccStatus? status,
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

abstract class Formify {
  const Formify._(this.value);

  const Formify(String value) : this._(value);

  final String value;

  String? get msg => validator(value);
  bool get valid => value.isNotEmpty && validator(value) == null;

  String? validator(String value);
}

class ValidateForm extends Formify {
  const ValidateForm(String value) : super(value);

  static final RegExp _nameRegExp =
      RegExp(r"^[\p{L}]*$", caseSensitive: false, unicode: true, dotAll: true);

  @override
  String? validator(String value) {
    if (value.isEmpty) return null;

    if (value.length < 4) {
      return 'Entered too short';
    }

    if (!_nameRegExp.hasMatch(value)) {
      return 'Enter a valid name';
    }

    return null;
  }
}



  // const AccountNameState.valid(Formify name)
  //     : this._(name: name, status: AccStatus.valid);
  // const AccountNameState.invalid() : this._(status: AccStatus.invalid);
  // const AccountNameState.loading() : this._(status: AccStatus.loading);
  // const AccountNameState.success() : this._(status: AccStatus.success);
  // const AccountNameState.error(String? msg)
  //     : this._(msg: msg, status: AccStatus.invalid);