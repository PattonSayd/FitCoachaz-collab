// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_parameters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BodyParametersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState gender) genderChanged,
    required TResult Function(int focusedIndex) focusedBornIndex,
    required TResult Function(int focusedIndex) focusedHeightIndex,
    required TResult Function(int focusedIndex) focusedWeightIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState gender)? genderChanged,
    TResult? Function(int focusedIndex)? focusedBornIndex,
    TResult? Function(int focusedIndex)? focusedHeightIndex,
    TResult? Function(int focusedIndex)? focusedWeightIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState gender)? genderChanged,
    TResult Function(int focusedIndex)? focusedBornIndex,
    TResult Function(int focusedIndex)? focusedHeightIndex,
    TResult Function(int focusedIndex)? focusedWeightIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderEvent value) genderChanged,
    required TResult Function(_FocusedBornEvent value) focusedBornIndex,
    required TResult Function(_FocusedHeightEvent value) focusedHeightIndex,
    required TResult Function(_FocusedWeightEvent value) focusedWeightIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderEvent value)? genderChanged,
    TResult? Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult? Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult? Function(_FocusedWeightEvent value)? focusedWeightIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderEvent value)? genderChanged,
    TResult Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult Function(_FocusedWeightEvent value)? focusedWeightIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyParametersEventCopyWith<$Res> {
  factory $BodyParametersEventCopyWith(
          BodyParametersEvent value, $Res Function(BodyParametersEvent) then) =
      _$BodyParametersEventCopyWithImpl<$Res, BodyParametersEvent>;
}

/// @nodoc
class _$BodyParametersEventCopyWithImpl<$Res, $Val extends BodyParametersEvent>
    implements $BodyParametersEventCopyWith<$Res> {
  _$BodyParametersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GenderEventCopyWith<$Res> {
  factory _$$_GenderEventCopyWith(
          _$_GenderEvent value, $Res Function(_$_GenderEvent) then) =
      __$$_GenderEventCopyWithImpl<$Res>;
  @useResult
  $Res call({GenderState gender});
}

/// @nodoc
class __$$_GenderEventCopyWithImpl<$Res>
    extends _$BodyParametersEventCopyWithImpl<$Res, _$_GenderEvent>
    implements _$$_GenderEventCopyWith<$Res> {
  __$$_GenderEventCopyWithImpl(
      _$_GenderEvent _value, $Res Function(_$_GenderEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$_GenderEvent(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderState,
    ));
  }
}

/// @nodoc

class _$_GenderEvent implements _GenderEvent {
  const _$_GenderEvent(this.gender);

  @override
  final GenderState gender;

  @override
  String toString() {
    return 'BodyParametersEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderEvent &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenderEventCopyWith<_$_GenderEvent> get copyWith =>
      __$$_GenderEventCopyWithImpl<_$_GenderEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState gender) genderChanged,
    required TResult Function(int focusedIndex) focusedBornIndex,
    required TResult Function(int focusedIndex) focusedHeightIndex,
    required TResult Function(int focusedIndex) focusedWeightIndex,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState gender)? genderChanged,
    TResult? Function(int focusedIndex)? focusedBornIndex,
    TResult? Function(int focusedIndex)? focusedHeightIndex,
    TResult? Function(int focusedIndex)? focusedWeightIndex,
  }) {
    return genderChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState gender)? genderChanged,
    TResult Function(int focusedIndex)? focusedBornIndex,
    TResult Function(int focusedIndex)? focusedHeightIndex,
    TResult Function(int focusedIndex)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderEvent value) genderChanged,
    required TResult Function(_FocusedBornEvent value) focusedBornIndex,
    required TResult Function(_FocusedHeightEvent value) focusedHeightIndex,
    required TResult Function(_FocusedWeightEvent value) focusedWeightIndex,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderEvent value)? genderChanged,
    TResult? Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult? Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult? Function(_FocusedWeightEvent value)? focusedWeightIndex,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderEvent value)? genderChanged,
    TResult Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult Function(_FocusedWeightEvent value)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderEvent implements BodyParametersEvent {
  const factory _GenderEvent(final GenderState gender) = _$_GenderEvent;

  GenderState get gender;
  @JsonKey(ignore: true)
  _$$_GenderEventCopyWith<_$_GenderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FocusedBornEventCopyWith<$Res> {
  factory _$$_FocusedBornEventCopyWith(
          _$_FocusedBornEvent value, $Res Function(_$_FocusedBornEvent) then) =
      __$$_FocusedBornEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int focusedIndex});
}

/// @nodoc
class __$$_FocusedBornEventCopyWithImpl<$Res>
    extends _$BodyParametersEventCopyWithImpl<$Res, _$_FocusedBornEvent>
    implements _$$_FocusedBornEventCopyWith<$Res> {
  __$$_FocusedBornEventCopyWithImpl(
      _$_FocusedBornEvent _value, $Res Function(_$_FocusedBornEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
  }) {
    return _then(_$_FocusedBornEvent(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FocusedBornEvent implements _FocusedBornEvent {
  const _$_FocusedBornEvent({required this.focusedIndex});

  @override
  final int focusedIndex;

  @override
  String toString() {
    return 'BodyParametersEvent.focusedBornIndex(focusedIndex: $focusedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FocusedBornEvent &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FocusedBornEventCopyWith<_$_FocusedBornEvent> get copyWith =>
      __$$_FocusedBornEventCopyWithImpl<_$_FocusedBornEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState gender) genderChanged,
    required TResult Function(int focusedIndex) focusedBornIndex,
    required TResult Function(int focusedIndex) focusedHeightIndex,
    required TResult Function(int focusedIndex) focusedWeightIndex,
  }) {
    return focusedBornIndex(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState gender)? genderChanged,
    TResult? Function(int focusedIndex)? focusedBornIndex,
    TResult? Function(int focusedIndex)? focusedHeightIndex,
    TResult? Function(int focusedIndex)? focusedWeightIndex,
  }) {
    return focusedBornIndex?.call(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState gender)? genderChanged,
    TResult Function(int focusedIndex)? focusedBornIndex,
    TResult Function(int focusedIndex)? focusedHeightIndex,
    TResult Function(int focusedIndex)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedBornIndex != null) {
      return focusedBornIndex(focusedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderEvent value) genderChanged,
    required TResult Function(_FocusedBornEvent value) focusedBornIndex,
    required TResult Function(_FocusedHeightEvent value) focusedHeightIndex,
    required TResult Function(_FocusedWeightEvent value) focusedWeightIndex,
  }) {
    return focusedBornIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderEvent value)? genderChanged,
    TResult? Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult? Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult? Function(_FocusedWeightEvent value)? focusedWeightIndex,
  }) {
    return focusedBornIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderEvent value)? genderChanged,
    TResult Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult Function(_FocusedWeightEvent value)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedBornIndex != null) {
      return focusedBornIndex(this);
    }
    return orElse();
  }
}

abstract class _FocusedBornEvent implements BodyParametersEvent {
  const factory _FocusedBornEvent({required final int focusedIndex}) =
      _$_FocusedBornEvent;

  int get focusedIndex;
  @JsonKey(ignore: true)
  _$$_FocusedBornEventCopyWith<_$_FocusedBornEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FocusedHeightEventCopyWith<$Res> {
  factory _$$_FocusedHeightEventCopyWith(_$_FocusedHeightEvent value,
          $Res Function(_$_FocusedHeightEvent) then) =
      __$$_FocusedHeightEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int focusedIndex});
}

/// @nodoc
class __$$_FocusedHeightEventCopyWithImpl<$Res>
    extends _$BodyParametersEventCopyWithImpl<$Res, _$_FocusedHeightEvent>
    implements _$$_FocusedHeightEventCopyWith<$Res> {
  __$$_FocusedHeightEventCopyWithImpl(
      _$_FocusedHeightEvent _value, $Res Function(_$_FocusedHeightEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
  }) {
    return _then(_$_FocusedHeightEvent(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FocusedHeightEvent implements _FocusedHeightEvent {
  const _$_FocusedHeightEvent({required this.focusedIndex});

  @override
  final int focusedIndex;

  @override
  String toString() {
    return 'BodyParametersEvent.focusedHeightIndex(focusedIndex: $focusedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FocusedHeightEvent &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FocusedHeightEventCopyWith<_$_FocusedHeightEvent> get copyWith =>
      __$$_FocusedHeightEventCopyWithImpl<_$_FocusedHeightEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState gender) genderChanged,
    required TResult Function(int focusedIndex) focusedBornIndex,
    required TResult Function(int focusedIndex) focusedHeightIndex,
    required TResult Function(int focusedIndex) focusedWeightIndex,
  }) {
    return focusedHeightIndex(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState gender)? genderChanged,
    TResult? Function(int focusedIndex)? focusedBornIndex,
    TResult? Function(int focusedIndex)? focusedHeightIndex,
    TResult? Function(int focusedIndex)? focusedWeightIndex,
  }) {
    return focusedHeightIndex?.call(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState gender)? genderChanged,
    TResult Function(int focusedIndex)? focusedBornIndex,
    TResult Function(int focusedIndex)? focusedHeightIndex,
    TResult Function(int focusedIndex)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedHeightIndex != null) {
      return focusedHeightIndex(focusedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderEvent value) genderChanged,
    required TResult Function(_FocusedBornEvent value) focusedBornIndex,
    required TResult Function(_FocusedHeightEvent value) focusedHeightIndex,
    required TResult Function(_FocusedWeightEvent value) focusedWeightIndex,
  }) {
    return focusedHeightIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderEvent value)? genderChanged,
    TResult? Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult? Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult? Function(_FocusedWeightEvent value)? focusedWeightIndex,
  }) {
    return focusedHeightIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderEvent value)? genderChanged,
    TResult Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult Function(_FocusedWeightEvent value)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedHeightIndex != null) {
      return focusedHeightIndex(this);
    }
    return orElse();
  }
}

abstract class _FocusedHeightEvent implements BodyParametersEvent {
  const factory _FocusedHeightEvent({required final int focusedIndex}) =
      _$_FocusedHeightEvent;

  int get focusedIndex;
  @JsonKey(ignore: true)
  _$$_FocusedHeightEventCopyWith<_$_FocusedHeightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FocusedWeightEventCopyWith<$Res> {
  factory _$$_FocusedWeightEventCopyWith(_$_FocusedWeightEvent value,
          $Res Function(_$_FocusedWeightEvent) then) =
      __$$_FocusedWeightEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int focusedIndex});
}

/// @nodoc
class __$$_FocusedWeightEventCopyWithImpl<$Res>
    extends _$BodyParametersEventCopyWithImpl<$Res, _$_FocusedWeightEvent>
    implements _$$_FocusedWeightEventCopyWith<$Res> {
  __$$_FocusedWeightEventCopyWithImpl(
      _$_FocusedWeightEvent _value, $Res Function(_$_FocusedWeightEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
  }) {
    return _then(_$_FocusedWeightEvent(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FocusedWeightEvent implements _FocusedWeightEvent {
  const _$_FocusedWeightEvent({required this.focusedIndex});

  @override
  final int focusedIndex;

  @override
  String toString() {
    return 'BodyParametersEvent.focusedWeightIndex(focusedIndex: $focusedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FocusedWeightEvent &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FocusedWeightEventCopyWith<_$_FocusedWeightEvent> get copyWith =>
      __$$_FocusedWeightEventCopyWithImpl<_$_FocusedWeightEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GenderState gender) genderChanged,
    required TResult Function(int focusedIndex) focusedBornIndex,
    required TResult Function(int focusedIndex) focusedHeightIndex,
    required TResult Function(int focusedIndex) focusedWeightIndex,
  }) {
    return focusedWeightIndex(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GenderState gender)? genderChanged,
    TResult? Function(int focusedIndex)? focusedBornIndex,
    TResult? Function(int focusedIndex)? focusedHeightIndex,
    TResult? Function(int focusedIndex)? focusedWeightIndex,
  }) {
    return focusedWeightIndex?.call(focusedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GenderState gender)? genderChanged,
    TResult Function(int focusedIndex)? focusedBornIndex,
    TResult Function(int focusedIndex)? focusedHeightIndex,
    TResult Function(int focusedIndex)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedWeightIndex != null) {
      return focusedWeightIndex(focusedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderEvent value) genderChanged,
    required TResult Function(_FocusedBornEvent value) focusedBornIndex,
    required TResult Function(_FocusedHeightEvent value) focusedHeightIndex,
    required TResult Function(_FocusedWeightEvent value) focusedWeightIndex,
  }) {
    return focusedWeightIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderEvent value)? genderChanged,
    TResult? Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult? Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult? Function(_FocusedWeightEvent value)? focusedWeightIndex,
  }) {
    return focusedWeightIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderEvent value)? genderChanged,
    TResult Function(_FocusedBornEvent value)? focusedBornIndex,
    TResult Function(_FocusedHeightEvent value)? focusedHeightIndex,
    TResult Function(_FocusedWeightEvent value)? focusedWeightIndex,
    required TResult orElse(),
  }) {
    if (focusedWeightIndex != null) {
      return focusedWeightIndex(this);
    }
    return orElse();
  }
}

abstract class _FocusedWeightEvent implements BodyParametersEvent {
  const factory _FocusedWeightEvent({required final int focusedIndex}) =
      _$_FocusedWeightEvent;

  int get focusedIndex;
  @JsonKey(ignore: true)
  _$$_FocusedWeightEventCopyWith<_$_FocusedWeightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BodyParametersState {
  BodyParameterStatus get status => throw _privateConstructorUsedError;
  GenderState get gender => throw _privateConstructorUsedError;
  BornState get born => throw _privateConstructorUsedError;
  HeightState get height => throw _privateConstructorUsedError;
  WeightState get weight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyParametersStateCopyWith<BodyParametersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyParametersStateCopyWith<$Res> {
  factory $BodyParametersStateCopyWith(
          BodyParametersState value, $Res Function(BodyParametersState) then) =
      _$BodyParametersStateCopyWithImpl<$Res, BodyParametersState>;
  @useResult
  $Res call(
      {BodyParameterStatus status,
      GenderState gender,
      BornState born,
      HeightState height,
      WeightState weight});

  $BornStateCopyWith<$Res> get born;
  $HeightStateCopyWith<$Res> get height;
  $WeightStateCopyWith<$Res> get weight;
}

/// @nodoc
class _$BodyParametersStateCopyWithImpl<$Res, $Val extends BodyParametersState>
    implements $BodyParametersStateCopyWith<$Res> {
  _$BodyParametersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? gender = null,
    Object? born = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BodyParameterStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderState,
      born: null == born
          ? _value.born
          : born // ignore: cast_nullable_to_non_nullable
              as BornState,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as HeightState,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BornStateCopyWith<$Res> get born {
    return $BornStateCopyWith<$Res>(_value.born, (value) {
      return _then(_value.copyWith(born: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HeightStateCopyWith<$Res> get height {
    return $HeightStateCopyWith<$Res>(_value.height, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightStateCopyWith<$Res> get weight {
    return $WeightStateCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BodyParametersStateCopyWith<$Res>
    implements $BodyParametersStateCopyWith<$Res> {
  factory _$$_BodyParametersStateCopyWith(_$_BodyParametersState value,
          $Res Function(_$_BodyParametersState) then) =
      __$$_BodyParametersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BodyParameterStatus status,
      GenderState gender,
      BornState born,
      HeightState height,
      WeightState weight});

  @override
  $BornStateCopyWith<$Res> get born;
  @override
  $HeightStateCopyWith<$Res> get height;
  @override
  $WeightStateCopyWith<$Res> get weight;
}

/// @nodoc
class __$$_BodyParametersStateCopyWithImpl<$Res>
    extends _$BodyParametersStateCopyWithImpl<$Res, _$_BodyParametersState>
    implements _$$_BodyParametersStateCopyWith<$Res> {
  __$$_BodyParametersStateCopyWithImpl(_$_BodyParametersState _value,
      $Res Function(_$_BodyParametersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? gender = null,
    Object? born = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$_BodyParametersState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BodyParameterStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderState,
      born: null == born
          ? _value.born
          : born // ignore: cast_nullable_to_non_nullable
              as BornState,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as HeightState,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightState,
    ));
  }
}

/// @nodoc

class _$_BodyParametersState implements _BodyParametersState {
  const _$_BodyParametersState(
      {this.status = BodyParameterStatus.initial,
      this.gender = GenderState.male,
      this.born = const BornState(),
      this.height = const HeightState(),
      this.weight = const WeightState()});

  @override
  @JsonKey()
  final BodyParameterStatus status;
  @override
  @JsonKey()
  final GenderState gender;
  @override
  @JsonKey()
  final BornState born;
  @override
  @JsonKey()
  final HeightState height;
  @override
  @JsonKey()
  final WeightState weight;

  @override
  String toString() {
    return 'BodyParametersState(status: $status, gender: $gender, born: $born, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BodyParametersState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.born, born) || other.born == born) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, gender, born, height, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyParametersStateCopyWith<_$_BodyParametersState> get copyWith =>
      __$$_BodyParametersStateCopyWithImpl<_$_BodyParametersState>(
          this, _$identity);
}

abstract class _BodyParametersState implements BodyParametersState {
  const factory _BodyParametersState(
      {final BodyParameterStatus status,
      final GenderState gender,
      final BornState born,
      final HeightState height,
      final WeightState weight}) = _$_BodyParametersState;

  @override
  BodyParameterStatus get status;
  @override
  GenderState get gender;
  @override
  BornState get born;
  @override
  HeightState get height;
  @override
  WeightState get weight;
  @override
  @JsonKey(ignore: true)
  _$$_BodyParametersStateCopyWith<_$_BodyParametersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BornState {
  int get focusedIndex => throw _privateConstructorUsedError;
  int get startPoint => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BornStateCopyWith<BornState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BornStateCopyWith<$Res> {
  factory $BornStateCopyWith(BornState value, $Res Function(BornState) then) =
      _$BornStateCopyWithImpl<$Res, BornState>;
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class _$BornStateCopyWithImpl<$Res, $Val extends BornState>
    implements $BornStateCopyWith<$Res> {
  _$BornStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BornStateCopyWith<$Res> implements $BornStateCopyWith<$Res> {
  factory _$$_BornStateCopyWith(
          _$_BornState value, $Res Function(_$_BornState) then) =
      __$$_BornStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class __$$_BornStateCopyWithImpl<$Res>
    extends _$BornStateCopyWithImpl<$Res, _$_BornState>
    implements _$$_BornStateCopyWith<$Res> {
  __$$_BornStateCopyWithImpl(
      _$_BornState _value, $Res Function(_$_BornState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_$_BornState(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BornState implements _BornState {
  const _$_BornState(
      {this.focusedIndex = 1998, this.startPoint = 1960, this.length = 56});

  @override
  @JsonKey()
  final int focusedIndex;
  @override
  @JsonKey()
  final int startPoint;
  @override
  @JsonKey()
  final int length;

  @override
  String toString() {
    return 'BornState(focusedIndex: $focusedIndex, startPoint: $startPoint, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BornState &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusedIndex, startPoint, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BornStateCopyWith<_$_BornState> get copyWith =>
      __$$_BornStateCopyWithImpl<_$_BornState>(this, _$identity);
}

abstract class _BornState implements BornState {
  const factory _BornState(
      {final int focusedIndex,
      final int startPoint,
      final int length}) = _$_BornState;

  @override
  int get focusedIndex;
  @override
  int get startPoint;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$_BornStateCopyWith<_$_BornState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeightState {
  int get focusedIndex => throw _privateConstructorUsedError;
  int get startPoint => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeightStateCopyWith<HeightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightStateCopyWith<$Res> {
  factory $HeightStateCopyWith(
          HeightState value, $Res Function(HeightState) then) =
      _$HeightStateCopyWithImpl<$Res, HeightState>;
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class _$HeightStateCopyWithImpl<$Res, $Val extends HeightState>
    implements $HeightStateCopyWith<$Res> {
  _$HeightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeightStateCopyWith<$Res>
    implements $HeightStateCopyWith<$Res> {
  factory _$$_HeightStateCopyWith(
          _$_HeightState value, $Res Function(_$_HeightState) then) =
      __$$_HeightStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class __$$_HeightStateCopyWithImpl<$Res>
    extends _$HeightStateCopyWithImpl<$Res, _$_HeightState>
    implements _$$_HeightStateCopyWith<$Res> {
  __$$_HeightStateCopyWithImpl(
      _$_HeightState _value, $Res Function(_$_HeightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_$_HeightState(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HeightState implements _HeightState {
  const _$_HeightState(
      {this.focusedIndex = 170, this.startPoint = 100, this.length = 151});

  @override
  @JsonKey()
  final int focusedIndex;
  @override
  @JsonKey()
  final int startPoint;
  @override
  @JsonKey()
  final int length;

  @override
  String toString() {
    return 'HeightState(focusedIndex: $focusedIndex, startPoint: $startPoint, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeightState &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusedIndex, startPoint, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeightStateCopyWith<_$_HeightState> get copyWith =>
      __$$_HeightStateCopyWithImpl<_$_HeightState>(this, _$identity);
}

abstract class _HeightState implements HeightState {
  const factory _HeightState(
      {final int focusedIndex,
      final int startPoint,
      final int length}) = _$_HeightState;

  @override
  int get focusedIndex;
  @override
  int get startPoint;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$_HeightStateCopyWith<_$_HeightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeightState {
  int get focusedIndex => throw _privateConstructorUsedError;
  int get startPoint => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightStateCopyWith<WeightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightStateCopyWith<$Res> {
  factory $WeightStateCopyWith(
          WeightState value, $Res Function(WeightState) then) =
      _$WeightStateCopyWithImpl<$Res, WeightState>;
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class _$WeightStateCopyWithImpl<$Res, $Val extends WeightState>
    implements $WeightStateCopyWith<$Res> {
  _$WeightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeightStateCopyWith<$Res>
    implements $WeightStateCopyWith<$Res> {
  factory _$$_WeightStateCopyWith(
          _$_WeightState value, $Res Function(_$_WeightState) then) =
      __$$_WeightStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int focusedIndex, int startPoint, int length});
}

/// @nodoc
class __$$_WeightStateCopyWithImpl<$Res>
    extends _$WeightStateCopyWithImpl<$Res, _$_WeightState>
    implements _$$_WeightStateCopyWith<$Res> {
  __$$_WeightStateCopyWithImpl(
      _$_WeightState _value, $Res Function(_$_WeightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedIndex = null,
    Object? startPoint = null,
    Object? length = null,
  }) {
    return _then(_$_WeightState(
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeightState implements _WeightState {
  const _$_WeightState(
      {this.focusedIndex = 80, this.startPoint = 36, this.length = 165});

  @override
  @JsonKey()
  final int focusedIndex;
  @override
  @JsonKey()
  final int startPoint;
  @override
  @JsonKey()
  final int length;

  @override
  String toString() {
    return 'WeightState(focusedIndex: $focusedIndex, startPoint: $startPoint, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeightState &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, focusedIndex, startPoint, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeightStateCopyWith<_$_WeightState> get copyWith =>
      __$$_WeightStateCopyWithImpl<_$_WeightState>(this, _$identity);
}

abstract class _WeightState implements WeightState {
  const factory _WeightState(
      {final int focusedIndex,
      final int startPoint,
      final int length}) = _$_WeightState;

  @override
  int get focusedIndex;
  @override
  int get startPoint;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$_WeightStateCopyWith<_$_WeightState> get copyWith =>
      throw _privateConstructorUsedError;
}
