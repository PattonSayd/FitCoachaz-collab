part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _InitialSearch;
  const factory SearchState.loading() = _LoadingSearch;
  const factory SearchState.loaded(List<Coach> coaches) = _LoadedSearch;
}
