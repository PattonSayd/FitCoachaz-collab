// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SendOTPToPhoneEventCopyWith<$Res> {
  factory _$$_SendOTPToPhoneEventCopyWith(_$_SendOTPToPhoneEvent value,
          $Res Function(_$_SendOTPToPhoneEvent) then) =
      __$$_SendOTPToPhoneEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$_SendOTPToPhoneEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_SendOTPToPhoneEvent>
    implements _$$_SendOTPToPhoneEventCopyWith<$Res> {
  __$$_SendOTPToPhoneEventCopyWithImpl(_$_SendOTPToPhoneEvent _value,
      $Res Function(_$_SendOTPToPhoneEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_SendOTPToPhoneEvent(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendOTPToPhoneEvent
    with DiagnosticableTreeMixin
    implements _SendOTPToPhoneEvent {
  const _$_SendOTPToPhoneEvent({required this.number});

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.sendOTPToPhone(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.sendOTPToPhone'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOTPToPhoneEvent &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOTPToPhoneEventCopyWith<_$_SendOTPToPhoneEvent> get copyWith =>
      __$$_SendOTPToPhoneEventCopyWithImpl<_$_SendOTPToPhoneEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) {
    return sendOTPToPhone(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) {
    return sendOTPToPhone?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (sendOTPToPhone != null) {
      return sendOTPToPhone(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) {
    return sendOTPToPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) {
    return sendOTPToPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (sendOTPToPhone != null) {
      return sendOTPToPhone(this);
    }
    return orElse();
  }
}

abstract class _SendOTPToPhoneEvent implements RegisterEvent {
  const factory _SendOTPToPhoneEvent({required final String number}) =
      _$_SendOTPToPhoneEvent;

  String get number;
  @JsonKey(ignore: true)
  _$$_SendOTPToPhoneEventCopyWith<_$_SendOTPToPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifySentOTPEventCopyWith<$Res> {
  factory _$$_VerifySentOTPEventCopyWith(_$_VerifySentOTPEvent value,
          $Res Function(_$_VerifySentOTPEvent) then) =
      __$$_VerifySentOTPEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$_VerifySentOTPEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_VerifySentOTPEvent>
    implements _$$_VerifySentOTPEventCopyWith<$Res> {
  __$$_VerifySentOTPEventCopyWithImpl(
      _$_VerifySentOTPEvent _value, $Res Function(_$_VerifySentOTPEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$_VerifySentOTPEvent(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifySentOTPEvent
    with DiagnosticableTreeMixin
    implements _VerifySentOTPEvent {
  const _$_VerifySentOTPEvent({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.verifySentOTP(otpCode: $otpCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.verifySentOTP'))
      ..add(DiagnosticsProperty('otpCode', otpCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifySentOTPEvent &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifySentOTPEventCopyWith<_$_VerifySentOTPEvent> get copyWith =>
      __$$_VerifySentOTPEventCopyWithImpl<_$_VerifySentOTPEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) {
    return verifySentOTP(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) {
    return verifySentOTP?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (verifySentOTP != null) {
      return verifySentOTP(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) {
    return verifySentOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) {
    return verifySentOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (verifySentOTP != null) {
      return verifySentOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifySentOTPEvent implements RegisterEvent {
  const factory _VerifySentOTPEvent({required final String otpCode}) =
      _$_VerifySentOTPEvent;

  String get otpCode;
  @JsonKey(ignore: true)
  _$$_VerifySentOTPEventCopyWith<_$_VerifySentOTPEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneOTPSentEventCopyWith<$Res> {
  factory _$$_OnPhoneOTPSentEventCopyWith(_$_OnPhoneOTPSentEvent value,
          $Res Function(_$_OnPhoneOTPSentEvent) then) =
      __$$_OnPhoneOTPSentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? token});
}

/// @nodoc
class __$$_OnPhoneOTPSentEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_OnPhoneOTPSentEvent>
    implements _$$_OnPhoneOTPSentEventCopyWith<$Res> {
  __$$_OnPhoneOTPSentEventCopyWithImpl(_$_OnPhoneOTPSentEvent _value,
      $Res Function(_$_OnPhoneOTPSentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? token = freezed,
  }) {
    return _then(_$_OnPhoneOTPSentEvent(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_OnPhoneOTPSentEvent
    with DiagnosticableTreeMixin
    implements _OnPhoneOTPSentEvent {
  const _$_OnPhoneOTPSentEvent({required this.verificationId, this.token});

  @override
  final String verificationId;
  @override
  final int? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onPhoneOTPSent(verificationId: $verificationId, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.onPhoneOTPSent'))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneOTPSentEvent &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneOTPSentEventCopyWith<_$_OnPhoneOTPSentEvent> get copyWith =>
      __$$_OnPhoneOTPSentEventCopyWithImpl<_$_OnPhoneOTPSentEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneOTPSent(verificationId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneOTPSent?.call(verificationId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneOTPSent != null) {
      return onPhoneOTPSent(verificationId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneOTPSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneOTPSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneOTPSent != null) {
      return onPhoneOTPSent(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneOTPSentEvent implements RegisterEvent {
  const factory _OnPhoneOTPSentEvent(
      {required final String verificationId,
      final int? token}) = _$_OnPhoneOTPSentEvent;

  String get verificationId;
  int? get token;
  @JsonKey(ignore: true)
  _$$_OnPhoneOTPSentEventCopyWith<_$_OnPhoneOTPSentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneAuthErrorEventCopyWith<$Res> {
  factory _$$_OnPhoneAuthErrorEventCopyWith(_$_OnPhoneAuthErrorEvent value,
          $Res Function(_$_OnPhoneAuthErrorEvent) then) =
      __$$_OnPhoneAuthErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_OnPhoneAuthErrorEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_OnPhoneAuthErrorEvent>
    implements _$$_OnPhoneAuthErrorEventCopyWith<$Res> {
  __$$_OnPhoneAuthErrorEventCopyWithImpl(_$_OnPhoneAuthErrorEvent _value,
      $Res Function(_$_OnPhoneAuthErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_OnPhoneAuthErrorEvent(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnPhoneAuthErrorEvent
    with DiagnosticableTreeMixin
    implements _OnPhoneAuthErrorEvent {
  const _$_OnPhoneAuthErrorEvent({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onPhoneAuthError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.onPhoneAuthError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneAuthErrorEvent &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneAuthErrorEventCopyWith<_$_OnPhoneAuthErrorEvent> get copyWith =>
      __$$_OnPhoneAuthErrorEventCopyWithImpl<_$_OnPhoneAuthErrorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneAuthError != null) {
      return onPhoneAuthError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneAuthError != null) {
      return onPhoneAuthError(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneAuthErrorEvent implements RegisterEvent {
  const factory _OnPhoneAuthErrorEvent({required final String error}) =
      _$_OnPhoneAuthErrorEvent;

  String get error;
  @JsonKey(ignore: true)
  _$$_OnPhoneAuthErrorEventCopyWith<_$_OnPhoneAuthErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneAuthVerificationCompleteEventCopyWith<$Res> {
  factory _$$_OnPhoneAuthVerificationCompleteEventCopyWith(
          _$_OnPhoneAuthVerificationCompleteEvent value,
          $Res Function(_$_OnPhoneAuthVerificationCompleteEvent) then) =
      __$$_OnPhoneAuthVerificationCompleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCredential credential});
}

/// @nodoc
class __$$_OnPhoneAuthVerificationCompleteEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$_OnPhoneAuthVerificationCompleteEvent>
    implements _$$_OnPhoneAuthVerificationCompleteEventCopyWith<$Res> {
  __$$_OnPhoneAuthVerificationCompleteEventCopyWithImpl(
      _$_OnPhoneAuthVerificationCompleteEvent _value,
      $Res Function(_$_OnPhoneAuthVerificationCompleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$_OnPhoneAuthVerificationCompleteEvent(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as AuthCredential,
    ));
  }
}

/// @nodoc

class _$_OnPhoneAuthVerificationCompleteEvent
    with DiagnosticableTreeMixin
    implements _OnPhoneAuthVerificationCompleteEvent {
  const _$_OnPhoneAuthVerificationCompleteEvent({required this.credential});

  @override
  final AuthCredential credential;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onPhoneAuthVerificationComplete(credential: $credential)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterEvent.onPhoneAuthVerificationComplete'))
      ..add(DiagnosticsProperty('credential', credential));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneAuthVerificationCompleteEvent &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneAuthVerificationCompleteEventCopyWith<
          _$_OnPhoneAuthVerificationCompleteEvent>
      get copyWith => __$$_OnPhoneAuthVerificationCompleteEventCopyWithImpl<
          _$_OnPhoneAuthVerificationCompleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode) verifySentOTP,
    required TResult Function(String verificationId, int? token) onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthVerificationComplete(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode)? verifySentOTP,
    TResult? Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthVerificationComplete?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode)? verifySentOTP,
    TResult Function(String verificationId, int? token)? onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneAuthVerificationComplete != null) {
      return onPhoneAuthVerificationComplete(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOTPToPhoneEvent value) sendOTPToPhone,
    required TResult Function(_VerifySentOTPEvent value) verifySentOTP,
    required TResult Function(_OnPhoneOTPSentEvent value) onPhoneOTPSent,
    required TResult Function(_OnPhoneAuthErrorEvent value) onPhoneAuthError,
    required TResult Function(_OnPhoneAuthVerificationCompleteEvent value)
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthVerificationComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult? Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult? Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult? Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult? Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
  }) {
    return onPhoneAuthVerificationComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOTPToPhoneEvent value)? sendOTPToPhone,
    TResult Function(_VerifySentOTPEvent value)? verifySentOTP,
    TResult Function(_OnPhoneOTPSentEvent value)? onPhoneOTPSent,
    TResult Function(_OnPhoneAuthErrorEvent value)? onPhoneAuthError,
    TResult Function(_OnPhoneAuthVerificationCompleteEvent value)?
        onPhoneAuthVerificationComplete,
    required TResult orElse(),
  }) {
    if (onPhoneAuthVerificationComplete != null) {
      return onPhoneAuthVerificationComplete(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneAuthVerificationCompleteEvent implements RegisterEvent {
  const factory _OnPhoneAuthVerificationCompleteEvent(
          {required final AuthCredential credential}) =
      _$_OnPhoneAuthVerificationCompleteEvent;

  AuthCredential get credential;
  @JsonKey(ignore: true)
  _$$_OnPhoneAuthVerificationCompleteEventCopyWith<
          _$_OnPhoneAuthVerificationCompleteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegistetrInitialCopyWith<$Res> {
  factory _$$_RegistetrInitialCopyWith(
          _$_RegistetrInitial value, $Res Function(_$_RegistetrInitial) then) =
      __$$_RegistetrInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistetrInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegistetrInitial>
    implements _$$_RegistetrInitialCopyWith<$Res> {
  __$$_RegistetrInitialCopyWithImpl(
      _$_RegistetrInitial _value, $Res Function(_$_RegistetrInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistetrInitial
    with DiagnosticableTreeMixin
    implements _RegistetrInitial {
  const _$_RegistetrInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegistetrInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
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
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegistetrInitial implements RegisterState {
  const factory _RegistetrInitial() = _$_RegistetrInitial;
}

/// @nodoc
abstract class _$$_RegistetrLoadingCopyWith<$Res> {
  factory _$$_RegistetrLoadingCopyWith(
          _$_RegistetrLoading value, $Res Function(_$_RegistetrLoading) then) =
      __$$_RegistetrLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistetrLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegistetrLoading>
    implements _$$_RegistetrLoadingCopyWith<$Res> {
  __$$_RegistetrLoadingCopyWithImpl(
      _$_RegistetrLoading _value, $Res Function(_$_RegistetrLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistetrLoading
    with DiagnosticableTreeMixin
    implements _RegistetrLoading {
  const _$_RegistetrLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegistetrLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
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
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegistetrLoading implements RegisterState {
  const factory _RegistetrLoading() = _$_RegistetrLoading;
}

/// @nodoc
abstract class _$$_RegistetrLoadedCopyWith<$Res> {
  factory _$$_RegistetrLoadedCopyWith(
          _$_RegistetrLoaded value, $Res Function(_$_RegistetrLoaded) then) =
      __$$_RegistetrLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistetrLoadedCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegistetrLoaded>
    implements _$$_RegistetrLoadedCopyWith<$Res> {
  __$$_RegistetrLoadedCopyWithImpl(
      _$_RegistetrLoaded _value, $Res Function(_$_RegistetrLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistetrLoaded
    with DiagnosticableTreeMixin
    implements _RegistetrLoaded {
  const _$_RegistetrLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegistetrLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RegistetrLoaded implements RegisterState {
  const factory _RegistetrLoaded() = _$_RegistetrLoaded;
}

/// @nodoc
abstract class _$$_RegistetrErrorCopyWith<$Res> {
  factory _$$_RegistetrErrorCopyWith(
          _$_RegistetrError value, $Res Function(_$_RegistetrError) then) =
      __$$_RegistetrErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_RegistetrErrorCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegistetrError>
    implements _$$_RegistetrErrorCopyWith<$Res> {
  __$$_RegistetrErrorCopyWithImpl(
      _$_RegistetrError _value, $Res Function(_$_RegistetrError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_RegistetrError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegistetrError
    with DiagnosticableTreeMixin
    implements _RegistetrError {
  const _$_RegistetrError({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistetrError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistetrErrorCopyWith<_$_RegistetrError> get copyWith =>
      __$$_RegistetrErrorCopyWithImpl<_$_RegistetrError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RegistetrError implements RegisterState {
  const factory _RegistetrError({required final String error}) =
      _$_RegistetrError;

  String get error;
  @JsonKey(ignore: true)
  _$$_RegistetrErrorCopyWith<_$_RegistetrError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegistetrOtpSentSuccessCopyWith<$Res> {
  factory _$$_RegistetrOtpSentSuccessCopyWith(_$_RegistetrOtpSentSuccess value,
          $Res Function(_$_RegistetrOtpSentSuccess) then) =
      __$$_RegistetrOtpSentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistetrOtpSentSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegistetrOtpSentSuccess>
    implements _$$_RegistetrOtpSentSuccessCopyWith<$Res> {
  __$$_RegistetrOtpSentSuccessCopyWithImpl(_$_RegistetrOtpSentSuccess _value,
      $Res Function(_$_RegistetrOtpSentSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistetrOtpSentSuccess
    with DiagnosticableTreeMixin
    implements _RegistetrOtpSentSuccess {
  const _$_RegistetrOtpSentSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.otpSentSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.otpSentSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistetrOtpSentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() otpSentSuccess,
  }) {
    return otpSentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? otpSentSuccess,
  }) {
    return otpSentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (otpSentSuccess != null) {
      return otpSentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistetrInitial value) initial,
    required TResult Function(_RegistetrLoading value) loading,
    required TResult Function(_RegistetrLoaded value) loaded,
    required TResult Function(_RegistetrError value) error,
    required TResult Function(_RegistetrOtpSentSuccess value) otpSentSuccess,
  }) {
    return otpSentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistetrInitial value)? initial,
    TResult? Function(_RegistetrLoading value)? loading,
    TResult? Function(_RegistetrLoaded value)? loaded,
    TResult? Function(_RegistetrError value)? error,
    TResult? Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
  }) {
    return otpSentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistetrInitial value)? initial,
    TResult Function(_RegistetrLoading value)? loading,
    TResult Function(_RegistetrLoaded value)? loaded,
    TResult Function(_RegistetrError value)? error,
    TResult Function(_RegistetrOtpSentSuccess value)? otpSentSuccess,
    required TResult orElse(),
  }) {
    if (otpSentSuccess != null) {
      return otpSentSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegistetrOtpSentSuccess implements RegisterState {
  const factory _RegistetrOtpSentSuccess() = _$_RegistetrOtpSentSuccess;
}
