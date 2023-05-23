part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;
  const factory SessionState.emailVerification() = _EmailVerification;
  const factory SessionState.displayNameVerification() =
      _DisplayNameVerification;
  const factory SessionState.authorized() = _Authorized;
  const factory SessionState.unauthorized() = _Unauthorized;
}
