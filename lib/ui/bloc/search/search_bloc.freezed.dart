// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ClearSearchEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ClearSearchEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ClearSearchEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchEventCopyWith<$Res> {
  factory _$$_SearchEventCopyWith(
          _$_SearchEvent value, $Res Function(_$_SearchEvent) then) =
      __$$_SearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchEvent>
    implements _$$_SearchEventCopyWith<$Res> {
  __$$_SearchEventCopyWithImpl(
      _$_SearchEvent _value, $Res Function(_$_SearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchEvent(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchEvent implements _SearchEvent {
  const _$_SearchEvent(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      __$$_SearchEventCopyWithImpl<_$_SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() clear,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? clear,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ClearSearchEvent value) clear,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ClearSearchEvent value)? clear,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ClearSearchEvent value)? clear,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements SearchEvent {
  const factory _SearchEvent(final String query) = _$_SearchEvent;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearSearchEventCopyWith<$Res> {
  factory _$$_ClearSearchEventCopyWith(
          _$_ClearSearchEvent value, $Res Function(_$_ClearSearchEvent) then) =
      __$$_ClearSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_ClearSearchEvent>
    implements _$$_ClearSearchEventCopyWith<$Res> {
  __$$_ClearSearchEventCopyWithImpl(
      _$_ClearSearchEvent _value, $Res Function(_$_ClearSearchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSearchEvent implements _ClearSearchEvent {
  const _$_ClearSearchEvent();

  @override
  String toString() {
    return 'SearchEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_ClearSearchEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEvent value)? search,
    TResult? Function(_ClearSearchEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEvent value)? search,
    TResult Function(_ClearSearchEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearSearchEvent implements SearchEvent {
  const factory _ClearSearchEvent() = _$_ClearSearchEvent;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Coach> coaches) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Coach> coaches)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Coach> coaches)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_LoadingSearch value) loading,
    required TResult Function(_LoadedSearch value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_LoadingSearch value)? loading,
    TResult? Function(_LoadedSearch value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_LoadingSearch value)? loading,
    TResult Function(_LoadedSearch value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchCopyWith<$Res> {
  factory _$$_InitialSearchCopyWith(
          _$_InitialSearch value, $Res Function(_$_InitialSearch) then) =
      __$$_InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_InitialSearch>
    implements _$$_InitialSearchCopyWith<$Res> {
  __$$_InitialSearchCopyWithImpl(
      _$_InitialSearch _value, $Res Function(_$_InitialSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearch implements _InitialSearch {
  const _$_InitialSearch();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Coach> coaches) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Coach> coaches)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Coach> coaches)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_LoadingSearch value) loading,
    required TResult Function(_LoadedSearch value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_LoadingSearch value)? loading,
    TResult? Function(_LoadedSearch value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_LoadingSearch value)? loading,
    TResult Function(_LoadedSearch value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearch implements SearchState {
  const factory _InitialSearch() = _$_InitialSearch;
}

/// @nodoc
abstract class _$$_LoadingSearchCopyWith<$Res> {
  factory _$$_LoadingSearchCopyWith(
          _$_LoadingSearch value, $Res Function(_$_LoadingSearch) then) =
      __$$_LoadingSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingSearchCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadingSearch>
    implements _$$_LoadingSearchCopyWith<$Res> {
  __$$_LoadingSearchCopyWithImpl(
      _$_LoadingSearch _value, $Res Function(_$_LoadingSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingSearch implements _LoadingSearch {
  const _$_LoadingSearch();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Coach> coaches) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Coach> coaches)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Coach> coaches)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_LoadingSearch value) loading,
    required TResult Function(_LoadedSearch value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_LoadingSearch value)? loading,
    TResult? Function(_LoadedSearch value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_LoadingSearch value)? loading,
    TResult Function(_LoadedSearch value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSearch implements SearchState {
  const factory _LoadingSearch() = _$_LoadingSearch;
}

/// @nodoc
abstract class _$$_LoadedSearchCopyWith<$Res> {
  factory _$$_LoadedSearchCopyWith(
          _$_LoadedSearch value, $Res Function(_$_LoadedSearch) then) =
      __$$_LoadedSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coach> coaches});
}

/// @nodoc
class __$$_LoadedSearchCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadedSearch>
    implements _$$_LoadedSearchCopyWith<$Res> {
  __$$_LoadedSearchCopyWithImpl(
      _$_LoadedSearch _value, $Res Function(_$_LoadedSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coaches = null,
  }) {
    return _then(_$_LoadedSearch(
      null == coaches
          ? _value._coaches
          : coaches // ignore: cast_nullable_to_non_nullable
              as List<Coach>,
    ));
  }
}

/// @nodoc

class _$_LoadedSearch implements _LoadedSearch {
  const _$_LoadedSearch(final List<Coach> coaches) : _coaches = coaches;

  final List<Coach> _coaches;
  @override
  List<Coach> get coaches {
    if (_coaches is EqualUnmodifiableListView) return _coaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coaches);
  }

  @override
  String toString() {
    return 'SearchState.loaded(coaches: $coaches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedSearch &&
            const DeepCollectionEquality().equals(other._coaches, _coaches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coaches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedSearchCopyWith<_$_LoadedSearch> get copyWith =>
      __$$_LoadedSearchCopyWithImpl<_$_LoadedSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Coach> coaches) loaded,
  }) {
    return loaded(coaches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Coach> coaches)? loaded,
  }) {
    return loaded?.call(coaches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Coach> coaches)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(coaches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_LoadingSearch value) loading,
    required TResult Function(_LoadedSearch value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_LoadingSearch value)? loading,
    TResult? Function(_LoadedSearch value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_LoadingSearch value)? loading,
    TResult Function(_LoadedSearch value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearch implements SearchState {
  const factory _LoadedSearch(final List<Coach> coaches) = _$_LoadedSearch;

  List<Coach> get coaches;
  @JsonKey(ignore: true)
  _$$_LoadedSearchCopyWith<_$_LoadedSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
