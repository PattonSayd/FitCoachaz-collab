// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get sport => throw _privateConstructorUsedError;
  double? get rating =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'work_time')
  String get workTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call(
      {String name,
      String surname,
      String photo,
      String sport,
      double? rating,
      @JsonKey(name: 'work_time') String workTime});
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? photo = null,
    Object? sport = null,
    Object? rating = freezed,
    Object? workTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoachCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$_CoachCopyWith(_$_Coach value, $Res Function(_$_Coach) then) =
      __$$_CoachCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String surname,
      String photo,
      String sport,
      double? rating,
      @JsonKey(name: 'work_time') String workTime});
}

/// @nodoc
class __$$_CoachCopyWithImpl<$Res> extends _$CoachCopyWithImpl<$Res, _$_Coach>
    implements _$$_CoachCopyWith<$Res> {
  __$$_CoachCopyWithImpl(_$_Coach _value, $Res Function(_$_Coach) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? photo = null,
    Object? sport = null,
    Object? rating = freezed,
    Object? workTime = null,
  }) {
    return _then(_$_Coach(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coach implements _Coach {
  _$_Coach(
      {required this.name,
      required this.surname,
      required this.photo,
      required this.sport,
      required this.rating,
      @JsonKey(name: 'work_time') required this.workTime});

  factory _$_Coach.fromJson(Map<String, dynamic> json) =>
      _$$_CoachFromJson(json);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String photo;
  @override
  final String sport;
  @override
  final double? rating;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'work_time')
  final String workTime;

  @override
  String toString() {
    return 'Coach(name: $name, surname: $surname, photo: $photo, sport: $sport, rating: $rating, workTime: $workTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coach &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, surname, photo, sport, rating, workTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      __$$_CoachCopyWithImpl<_$_Coach>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoachToJson(
      this,
    );
  }
}

abstract class _Coach implements Coach {
  factory _Coach(
      {required final String name,
      required final String surname,
      required final String photo,
      required final String sport,
      required final double? rating,
      @JsonKey(name: 'work_time') required final String workTime}) = _$_Coach;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$_Coach.fromJson;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get photo;
  @override
  String get sport;
  @override
  double? get rating;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'work_time')
  String get workTime;
  @override
  @JsonKey(ignore: true)
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      throw _privateConstructorUsedError;
}
