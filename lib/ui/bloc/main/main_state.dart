part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.initialized(List<Sports> sports, List<Coach> coach) =
      _Loaded;
  const factory MainState.error(String msg) = _Error;
}
