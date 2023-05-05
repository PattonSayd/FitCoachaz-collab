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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return sendOTPToPhone(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return sendOTPToPhone?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
  $Res call({String otpCode, String verificationId});
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
    Object? verificationId = null,
  }) {
    return _then(_$_VerifySentOTPEvent(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifySentOTPEvent
    with DiagnosticableTreeMixin
    implements _VerifySentOTPEvent {
  const _$_VerifySentOTPEvent(
      {required this.otpCode, required this.verificationId});

  @override
  final String otpCode;
  @override
  final String verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.verifySentOTP(otpCode: $otpCode, verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.verifySentOTP'))
      ..add(DiagnosticsProperty('otpCode', otpCode))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifySentOTPEvent &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode, verificationId);

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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return verifySentOTP(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return verifySentOTP?.call(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (verifySentOTP != null) {
      return verifySentOTP(otpCode, verificationId);
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (verifySentOTP != null) {
      return verifySentOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifySentOTPEvent implements RegisterEvent {
  const factory _VerifySentOTPEvent(
      {required final String otpCode,
      required final String verificationId}) = _$_VerifySentOTPEvent;

  String get otpCode;
  String get verificationId;
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
  $Res call({String verificationId, int? token, String phoneNumber});
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
    Object? phoneNumber = null,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnPhoneOTPSentEvent
    with DiagnosticableTreeMixin
    implements _OnPhoneOTPSentEvent {
  const _$_OnPhoneOTPSentEvent(
      {required this.verificationId, this.token, required this.phoneNumber});

  @override
  final String verificationId;
  @override
  final int? token;
  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onPhoneOTPSent(verificationId: $verificationId, token: $token, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.onPhoneOTPSent'))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneOTPSentEvent &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, verificationId, token, phoneNumber);

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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return onPhoneOTPSent(verificationId, token, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return onPhoneOTPSent?.call(verificationId, token, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (onPhoneOTPSent != null) {
      return onPhoneOTPSent(verificationId, token, phoneNumber);
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
      final int? token,
      required final String phoneNumber}) = _$_OnPhoneOTPSentEvent;

  String get verificationId;
  int? get token;
  String get phoneNumber;
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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return onPhoneAuthError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return onPhoneAuthError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return onPhoneAuthVerificationComplete(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return onPhoneAuthVerificationComplete?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
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
abstract class _$$_PhoneChangedEventCopyWith<$Res> {
  factory _$$_PhoneChangedEventCopyWith(_$_PhoneChangedEvent value,
          $Res Function(_$_PhoneChangedEvent) then) =
      __$$_PhoneChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_PhoneChangedEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_PhoneChangedEvent>
    implements _$$_PhoneChangedEventCopyWith<$Res> {
  __$$_PhoneChangedEventCopyWithImpl(
      _$_PhoneChangedEvent _value, $Res Function(_$_PhoneChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_PhoneChangedEvent(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChangedEvent
    with DiagnosticableTreeMixin
    implements _PhoneChangedEvent {
  const _$_PhoneChangedEvent({required this.phone});

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.phoneChanged(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.phoneChanged'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChangedEvent &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneChangedEventCopyWith<_$_PhoneChangedEvent> get copyWith =>
      __$$_PhoneChangedEventCopyWithImpl<_$_PhoneChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
  }) {
    return phoneChanged(this);
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
  }) {
    return phoneChanged?.call(this);
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChangedEvent implements RegisterEvent {
  const factory _PhoneChangedEvent({required final String phone}) =
      _$_PhoneChangedEvent;

  String get phone;
  @JsonKey(ignore: true)
  _$$_PhoneChangedEventCopyWith<_$_PhoneChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneChangedPrefixEventCopyWith<$Res> {
  factory _$$_PhoneChangedPrefixEventCopyWith(_$_PhoneChangedPrefixEvent value,
          $Res Function(_$_PhoneChangedPrefixEvent) then) =
      __$$_PhoneChangedPrefixEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String prefix});
}

/// @nodoc
class __$$_PhoneChangedPrefixEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_PhoneChangedPrefixEvent>
    implements _$$_PhoneChangedPrefixEventCopyWith<$Res> {
  __$$_PhoneChangedPrefixEventCopyWithImpl(_$_PhoneChangedPrefixEvent _value,
      $Res Function(_$_PhoneChangedPrefixEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_$_PhoneChangedPrefixEvent(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChangedPrefixEvent
    with DiagnosticableTreeMixin
    implements _PhoneChangedPrefixEvent {
  const _$_PhoneChangedPrefixEvent({required this.prefix});

  @override
  final String prefix;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.phoneChangedPrefix(prefix: $prefix)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.phoneChangedPrefix'))
      ..add(DiagnosticsProperty('prefix', prefix));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneChangedPrefixEvent &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneChangedPrefixEventCopyWith<_$_PhoneChangedPrefixEvent>
      get copyWith =>
          __$$_PhoneChangedPrefixEventCopyWithImpl<_$_PhoneChangedPrefixEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return phoneChangedPrefix(prefix);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return phoneChangedPrefix?.call(prefix);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChangedPrefix != null) {
      return phoneChangedPrefix(prefix);
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
  }) {
    return phoneChangedPrefix(this);
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
  }) {
    return phoneChangedPrefix?.call(this);
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChangedPrefix != null) {
      return phoneChangedPrefix(this);
    }
    return orElse();
  }
}

abstract class _PhoneChangedPrefixEvent implements RegisterEvent {
  const factory _PhoneChangedPrefixEvent({required final String prefix}) =
      _$_PhoneChangedPrefixEvent;

  String get prefix;
  @JsonKey(ignore: true)
  _$$_PhoneChangedPrefixEventCopyWith<_$_PhoneChangedPrefixEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneUnfocusedEventCopyWith<$Res> {
  factory _$$_PhoneUnfocusedEventCopyWith(_$_PhoneUnfocusedEvent value,
          $Res Function(_$_PhoneUnfocusedEvent) then) =
      __$$_PhoneUnfocusedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhoneUnfocusedEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_PhoneUnfocusedEvent>
    implements _$$_PhoneUnfocusedEventCopyWith<$Res> {
  __$$_PhoneUnfocusedEventCopyWithImpl(_$_PhoneUnfocusedEvent _value,
      $Res Function(_$_PhoneUnfocusedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhoneUnfocusedEvent
    with DiagnosticableTreeMixin
    implements _PhoneUnfocusedEvent {
  const _$_PhoneUnfocusedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.phoneUnfocused()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterEvent.phoneUnfocused'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhoneUnfocusedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return phoneUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return phoneUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneUnfocused != null) {
      return phoneUnfocused();
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
  }) {
    return phoneUnfocused(this);
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
  }) {
    return phoneUnfocused?.call(this);
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneUnfocused != null) {
      return phoneUnfocused(this);
    }
    return orElse();
  }
}

abstract class _PhoneUnfocusedEvent implements RegisterEvent {
  const factory _PhoneUnfocusedEvent() = _$_PhoneUnfocusedEvent;
}

/// @nodoc
abstract class _$$_PhoneFormSubmittedEventCopyWith<$Res> {
  factory _$$_PhoneFormSubmittedEventCopyWith(_$_PhoneFormSubmittedEvent value,
          $Res Function(_$_PhoneFormSubmittedEvent) then) =
      __$$_PhoneFormSubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhoneFormSubmittedEventCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_PhoneFormSubmittedEvent>
    implements _$$_PhoneFormSubmittedEventCopyWith<$Res> {
  __$$_PhoneFormSubmittedEventCopyWithImpl(_$_PhoneFormSubmittedEvent _value,
      $Res Function(_$_PhoneFormSubmittedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhoneFormSubmittedEvent
    with DiagnosticableTreeMixin
    implements _PhoneFormSubmittedEvent {
  const _$_PhoneFormSubmittedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.phoneFormSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RegisterEvent.phoneFormSubmitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneFormSubmittedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) sendOTPToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOTP,
    required TResult Function(
            String verificationId, int? token, String phoneNumber)
        onPhoneOTPSent,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String prefix) phoneChangedPrefix,
    required TResult Function() phoneUnfocused,
    required TResult Function() phoneFormSubmitted,
  }) {
    return phoneFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? sendOTPToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOTP,
    TResult? Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String prefix)? phoneChangedPrefix,
    TResult? Function()? phoneUnfocused,
    TResult? Function()? phoneFormSubmitted,
  }) {
    return phoneFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? sendOTPToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOTP,
    TResult Function(String verificationId, int? token, String phoneNumber)?
        onPhoneOTPSent,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String prefix)? phoneChangedPrefix,
    TResult Function()? phoneUnfocused,
    TResult Function()? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneFormSubmitted != null) {
      return phoneFormSubmitted();
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
    required TResult Function(_PhoneChangedEvent value) phoneChanged,
    required TResult Function(_PhoneChangedPrefixEvent value)
        phoneChangedPrefix,
    required TResult Function(_PhoneUnfocusedEvent value) phoneUnfocused,
    required TResult Function(_PhoneFormSubmittedEvent value)
        phoneFormSubmitted,
  }) {
    return phoneFormSubmitted(this);
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
    TResult? Function(_PhoneChangedEvent value)? phoneChanged,
    TResult? Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult? Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult? Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
  }) {
    return phoneFormSubmitted?.call(this);
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
    TResult Function(_PhoneChangedEvent value)? phoneChanged,
    TResult Function(_PhoneChangedPrefixEvent value)? phoneChangedPrefix,
    TResult Function(_PhoneUnfocusedEvent value)? phoneUnfocused,
    TResult Function(_PhoneFormSubmittedEvent value)? phoneFormSubmitted,
    required TResult orElse(),
  }) {
    if (phoneFormSubmitted != null) {
      return phoneFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class _PhoneFormSubmittedEvent implements RegisterEvent {
  const factory _PhoneFormSubmittedEvent() = _$_PhoneFormSubmittedEvent;
}

/// @nodoc
mixin _$RegisterState {
  PhoneFormz get phoneField => throw _privateConstructorUsedError;
  FormzSubmissionStatus? get submissionStatus =>
      throw _privateConstructorUsedError;
  RegisterStatus get registerStatus => throw _privateConstructorUsedError;
  String get prefix => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {PhoneFormz phoneField,
      FormzSubmissionStatus? submissionStatus,
      RegisterStatus registerStatus,
      String prefix,
      String? phoneNumber,
      String? verificationId,
      String? error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneField = null,
    Object? submissionStatus = freezed,
    Object? registerStatus = null,
    Object? prefix = null,
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      phoneField: null == phoneField
          ? _value.phoneField
          : phoneField // ignore: cast_nullable_to_non_nullable
              as PhoneFormz,
      submissionStatus: freezed == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus?,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhoneFormz phoneField,
      FormzSubmissionStatus? submissionStatus,
      RegisterStatus registerStatus,
      String prefix,
      String? phoneNumber,
      String? verificationId,
      String? error});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneField = null,
    Object? submissionStatus = freezed,
    Object? registerStatus = null,
    Object? prefix = null,
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RegisterState(
      phoneField: null == phoneField
          ? _value.phoneField
          : phoneField // ignore: cast_nullable_to_non_nullable
              as PhoneFormz,
      submissionStatus: freezed == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus?,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      {this.phoneField = const PhoneFormz.pure(),
      this.submissionStatus = FormzSubmissionStatus.canceled,
      this.registerStatus = RegisterStatus.initial,
      this.prefix = '+994',
      this.phoneNumber,
      this.verificationId,
      this.error});

  @override
  @JsonKey()
  final PhoneFormz phoneField;
  @override
  @JsonKey()
  final FormzSubmissionStatus? submissionStatus;
  @override
  @JsonKey()
  final RegisterStatus registerStatus;
  @override
  @JsonKey()
  final String prefix;
  @override
  final String? phoneNumber;
  @override
  final String? verificationId;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(phoneField: $phoneField, submissionStatus: $submissionStatus, registerStatus: $registerStatus, prefix: $prefix, phoneNumber: $phoneNumber, verificationId: $verificationId, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('phoneField', phoneField))
      ..add(DiagnosticsProperty('submissionStatus', submissionStatus))
      ..add(DiagnosticsProperty('registerStatus', registerStatus))
      ..add(DiagnosticsProperty('prefix', prefix))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.phoneField, phoneField) ||
                other.phoneField == phoneField) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneField, submissionStatus,
      registerStatus, prefix, phoneNumber, verificationId, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final PhoneFormz phoneField,
      final FormzSubmissionStatus? submissionStatus,
      final RegisterStatus registerStatus,
      final String prefix,
      final String? phoneNumber,
      final String? verificationId,
      final String? error}) = _$_RegisterState;

  @override
  PhoneFormz get phoneField;
  @override
  FormzSubmissionStatus? get submissionStatus;
  @override
  RegisterStatus get registerStatus;
  @override
  String get prefix;
  @override
  String? get phoneNumber;
  @override
  String? get verificationId;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
