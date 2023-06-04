part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(String query) = _SearchEvent;
  const factory SearchEvent.clear() = _ClearSearchEvent;
}
