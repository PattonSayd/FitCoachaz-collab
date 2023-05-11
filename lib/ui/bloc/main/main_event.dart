part of 'main_bloc.dart';

// @freezed
// // class MainEvent with _$MainEvent {
// //   const factory MainEvent.logout() = _LogoutEvent;
// // }

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.logout() = _LogoutEvent;
}
