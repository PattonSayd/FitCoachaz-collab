part of 'main_bloc.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.uploadData() = _UploadDataEvent;
}
