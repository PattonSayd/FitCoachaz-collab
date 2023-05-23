// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sports _$SportsFromJson(Map<String, dynamic> json) {
  return _Sports.fromJson(json);
}

/// @nodoc
mixin _$Sports {
  String get sport => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportsCopyWith<Sports> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsCopyWith<$Res> {
  factory $SportsCopyWith(Sports value, $Res Function(Sports) then) =
      _$SportsCopyWithImpl<$Res, Sports>;
  @useResult
  $Res call({String sport, String image});
}

/// @nodoc
class _$SportsCopyWithImpl<$Res, $Val extends Sports>
    implements $SportsCopyWith<$Res> {
  _$SportsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sport = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SportsCopyWith<$Res> implements $SportsCopyWith<$Res> {
  factory _$$_SportsCopyWith(_$_Sports value, $Res Function(_$_Sports) then) =
      __$$_SportsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sport, String image});
}

/// @nodoc
class __$$_SportsCopyWithImpl<$Res>
    extends _$SportsCopyWithImpl<$Res, _$_Sports>
    implements _$$_SportsCopyWith<$Res> {
  __$$_SportsCopyWithImpl(_$_Sports _value, $Res Function(_$_Sports) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sport = null,
    Object? image = null,
  }) {
    return _then(_$_Sports(
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sports implements _Sports {
  _$_Sports({required this.sport, required this.image});

  factory _$_Sports.fromJson(Map<String, dynamic> json) =>
      _$$_SportsFromJson(json);

  @override
  final String sport;
  @override
  final String image;

  @override
  String toString() {
    return 'Sports(sport: $sport, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sports &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sport, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SportsCopyWith<_$_Sports> get copyWith =>
      __$$_SportsCopyWithImpl<_$_Sports>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SportsToJson(
      this,
    );
  }
}

abstract class _Sports implements Sports {
  factory _Sports({required final String sport, required final String image}) =
      _$_Sports;

  factory _Sports.fromJson(Map<String, dynamic> json) = _$_Sports.fromJson;

  @override
  String get sport;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_SportsCopyWith<_$_Sports> get copyWith =>
      throw _privateConstructorUsedError;
}
