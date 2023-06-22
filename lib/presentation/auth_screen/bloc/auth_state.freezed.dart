// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_NotAuthCopyWith<$Res> {
  factory _$$_NotAuthCopyWith(
          _$_NotAuth value, $Res Function(_$_NotAuth) then) =
      __$$_NotAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_NotAuth>
    implements _$$_NotAuthCopyWith<$Res> {
  __$$_NotAuthCopyWithImpl(_$_NotAuth _value, $Res Function(_$_NotAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotAuth implements _NotAuth {
  const _$_NotAuth();

  @override
  String toString() {
    return 'AuthState.notAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) {
    return notAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) {
    return notAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) {
    return notAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) {
    return notAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth(this);
    }
    return orElse();
  }
}

abstract class _NotAuth implements AuthState {
  const factory _NotAuth() = _$_NotAuth;
}

/// @nodoc
abstract class _$$_CodeSentCopyWith<$Res> {
  factory _$$_CodeSentCopyWith(
          _$_CodeSent value, $Res Function(_$_CodeSent) then) =
      __$$_CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CodeSentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_CodeSent>
    implements _$$_CodeSentCopyWith<$Res> {
  __$$_CodeSentCopyWithImpl(
      _$_CodeSent _value, $Res Function(_$_CodeSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CodeSent implements _CodeSent {
  const _$_CodeSent();

  @override
  String toString() {
    return 'AuthState.codeSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CodeSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) {
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) {
    return codeSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements AuthState {
  const factory _CodeSent() = _$_CodeSent;
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$_Auth>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Auth implements _Auth {
  const _$_Auth();

  @override
  String toString() {
    return 'AuthState.auth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Auth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth implements AuthState {
  const factory _Auth() = _$_Auth;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'AuthState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuth,
    required TResult Function() codeSent,
    required TResult Function() auth,
    required TResult Function(Object? error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? notAuth,
    TResult? Function()? codeSent,
    TResult? Function()? auth,
    TResult? Function(Object? error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuth,
    TResult Function()? codeSent,
    TResult Function()? auth,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotAuth value) notAuth,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_Auth value) auth,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotAuth value)? notAuth,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NotAuth value)? notAuth,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_Auth value)? auth,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({final Object? error}) = _$_Failure;

  Object? get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
