// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res, SessionState>;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SessionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SessionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EmailVerificationCopyWith<$Res> {
  factory _$$_EmailVerificationCopyWith(_$_EmailVerification value,
          $Res Function(_$_EmailVerification) then) =
      __$$_EmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailVerificationCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_EmailVerification>
    implements _$$_EmailVerificationCopyWith<$Res> {
  __$$_EmailVerificationCopyWithImpl(
      _$_EmailVerification _value, $Res Function(_$_EmailVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmailVerification implements _EmailVerification {
  const _$_EmailVerification();

  @override
  String toString() {
    return 'SessionState.emailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return emailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) {
    return emailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (emailVerification != null) {
      return emailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return emailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return emailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (emailVerification != null) {
      return emailVerification(this);
    }
    return orElse();
  }
}

abstract class _EmailVerification implements SessionState {
  const factory _EmailVerification() = _$_EmailVerification;
}

/// @nodoc
abstract class _$$_DisplayNameVerificationCopyWith<$Res> {
  factory _$$_DisplayNameVerificationCopyWith(_$_DisplayNameVerification value,
          $Res Function(_$_DisplayNameVerification) then) =
      __$$_DisplayNameVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisplayNameVerificationCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_DisplayNameVerification>
    implements _$$_DisplayNameVerificationCopyWith<$Res> {
  __$$_DisplayNameVerificationCopyWithImpl(_$_DisplayNameVerification _value,
      $Res Function(_$_DisplayNameVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisplayNameVerification implements _DisplayNameVerification {
  const _$_DisplayNameVerification();

  @override
  String toString() {
    return 'SessionState.displayNameVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayNameVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return displayNameVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) {
    return displayNameVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (displayNameVerification != null) {
      return displayNameVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return displayNameVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return displayNameVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (displayNameVerification != null) {
      return displayNameVerification(this);
    }
    return orElse();
  }
}

abstract class _DisplayNameVerification implements SessionState {
  const factory _DisplayNameVerification() = _$_DisplayNameVerification;
}

/// @nodoc
abstract class _$$_AuthorizedCopyWith<$Res> {
  factory _$$_AuthorizedCopyWith(
          _$_Authorized value, $Res Function(_$_Authorized) then) =
      __$$_AuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_Authorized>
    implements _$$_AuthorizedCopyWith<$Res> {
  __$$_AuthorizedCopyWithImpl(
      _$_Authorized _value, $Res Function(_$_Authorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authorized implements _Authorized {
  const _$_Authorized();

  @override
  String toString() {
    return 'SessionState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements SessionState {
  const factory _Authorized() = _$_Authorized;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$_Unauthorized>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'SessionState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emailVerification,
    required TResult Function() displayNameVerification,
    required TResult Function() authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emailVerification,
    TResult? Function()? displayNameVerification,
    TResult? Function()? authorized,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emailVerification,
    TResult Function()? displayNameVerification,
    TResult Function()? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmailVerification value) emailVerification,
    required TResult Function(_DisplayNameVerification value)
        displayNameVerification,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmailVerification value)? emailVerification,
    TResult? Function(_DisplayNameVerification value)? displayNameVerification,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmailVerification value)? emailVerification,
    TResult Function(_DisplayNameVerification value)? displayNameVerification,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements SessionState {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
mixin _$SessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSessionEvent value) checkSession,
    required TResult Function(_LogoutSessionEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSessionEvent value)? checkSession,
    TResult? Function(_LogoutSessionEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSessionEvent value)? checkSession,
    TResult Function(_LogoutSessionEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventCopyWith<$Res> {
  factory $SessionEventCopyWith(
          SessionEvent value, $Res Function(SessionEvent) then) =
      _$SessionEventCopyWithImpl<$Res, SessionEvent>;
}

/// @nodoc
class _$SessionEventCopyWithImpl<$Res, $Val extends SessionEvent>
    implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckSessionEventCopyWith<$Res> {
  factory _$$_CheckSessionEventCopyWith(_$_CheckSessionEvent value,
          $Res Function(_$_CheckSessionEvent) then) =
      __$$_CheckSessionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckSessionEventCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res, _$_CheckSessionEvent>
    implements _$$_CheckSessionEventCopyWith<$Res> {
  __$$_CheckSessionEventCopyWithImpl(
      _$_CheckSessionEvent _value, $Res Function(_$_CheckSessionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckSessionEvent implements _CheckSessionEvent {
  const _$_CheckSessionEvent();

  @override
  String toString() {
    return 'SessionEvent.checkSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckSessionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
    required TResult Function() logout,
  }) {
    return checkSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
    TResult? Function()? logout,
  }) {
    return checkSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSessionEvent value) checkSession,
    required TResult Function(_LogoutSessionEvent value) logout,
  }) {
    return checkSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSessionEvent value)? checkSession,
    TResult? Function(_LogoutSessionEvent value)? logout,
  }) {
    return checkSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSessionEvent value)? checkSession,
    TResult Function(_LogoutSessionEvent value)? logout,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession(this);
    }
    return orElse();
  }
}

abstract class _CheckSessionEvent implements SessionEvent {
  const factory _CheckSessionEvent() = _$_CheckSessionEvent;
}

/// @nodoc
abstract class _$$_LogoutSessionEventCopyWith<$Res> {
  factory _$$_LogoutSessionEventCopyWith(_$_LogoutSessionEvent value,
          $Res Function(_$_LogoutSessionEvent) then) =
      __$$_LogoutSessionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutSessionEventCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res, _$_LogoutSessionEvent>
    implements _$$_LogoutSessionEventCopyWith<$Res> {
  __$$_LogoutSessionEventCopyWithImpl(
      _$_LogoutSessionEvent _value, $Res Function(_$_LogoutSessionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutSessionEvent implements _LogoutSessionEvent {
  const _$_LogoutSessionEvent();

  @override
  String toString() {
    return 'SessionEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutSessionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSessionEvent value) checkSession,
    required TResult Function(_LogoutSessionEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSessionEvent value)? checkSession,
    TResult? Function(_LogoutSessionEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSessionEvent value)? checkSession,
    TResult Function(_LogoutSessionEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutSessionEvent implements SessionEvent {
  const factory _LogoutSessionEvent() = _$_LogoutSessionEvent;
}
