part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent.checkSession() = _CheckSessionEvent;
  const factory SessionEvent.logout() = _LogoutSessionEvent;
}
