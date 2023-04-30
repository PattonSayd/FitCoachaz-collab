part of 'email_bloc.dart';

enum EmailStatus { unknown, valid, invalid, loading, success, error }

class EmailState extends Equatable {
  const EmailState._({
    this.status = EmailStatus.unknown,
    this.error,
  });

  final EmailStatus status;
  final String? error;

  const EmailState.initial() : this._();
  const EmailState.loading() : this._(status: EmailStatus.loading);
  const EmailState.valid() : this._(status: EmailStatus.valid);
  const EmailState.invalid() : this._(status: EmailStatus.invalid);
  const EmailState.success() : this._(status: EmailStatus.success);
  const EmailState.error(String error)
      : this._(error: error, status: EmailStatus.error);

  @override
  List<Object> get props => [status];
}


// enum EmailStatus { unknown, valid, invalid, loading, success }

// class EmailState extends Equatable {
//   const EmailState({
//     this.status = EmailStatus.unknown,
//     this.email = '',
//     this.error,
//   });


//   final String email;
//   final EmailStatus status;
//   final String? error;

//   EmailState copyWith({
//     String? email,
//     EmailStatus? status,
//     String? error,
//   }) {
//     return EmailState(
//       email: email ?? this.email,
//       status: status ?? this.status,
//       error: error ?? this.error,
//     );
//   }

//   @override
//   List<Object> get props => [email, status];
// }

