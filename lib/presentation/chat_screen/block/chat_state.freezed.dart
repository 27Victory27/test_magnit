// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)
        succsess,
    required TResult Function(Object? error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult? Function(Object? error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succsess value) succsess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succsess value)? succsess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succsess value)? succsess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ChatState.loading()';
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
    required TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)
        succsess,
    required TResult Function(Object? error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult? Function(Object? error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
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
    required TResult Function(_Succsess value) succsess,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succsess value)? succsess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succsess value)? succsess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccsessCopyWith<$Res> {
  factory _$$_SuccsessCopyWith(
          _$_Succsess value, $Res Function(_$_Succsess) then) =
      __$$_SuccsessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> chatElementModel,
      int idCurrentUser,
      String nameOtherUser,
      String imgChat});
}

/// @nodoc
class __$$_SuccsessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Succsess>
    implements _$$_SuccsessCopyWith<$Res> {
  __$$_SuccsessCopyWithImpl(
      _$_Succsess _value, $Res Function(_$_Succsess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatElementModel = null,
    Object? idCurrentUser = null,
    Object? nameOtherUser = null,
    Object? imgChat = null,
  }) {
    return _then(_$_Succsess(
      null == chatElementModel
          ? _value._chatElementModel
          : chatElementModel // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      null == idCurrentUser
          ? _value.idCurrentUser
          : idCurrentUser // ignore: cast_nullable_to_non_nullable
              as int,
      null == nameOtherUser
          ? _value.nameOtherUser
          : nameOtherUser // ignore: cast_nullable_to_non_nullable
              as String,
      null == imgChat
          ? _value.imgChat
          : imgChat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Succsess implements _Succsess {
  const _$_Succsess(final List<Map<String, dynamic>> chatElementModel,
      this.idCurrentUser, this.nameOtherUser, this.imgChat)
      : _chatElementModel = chatElementModel;

  final List<Map<String, dynamic>> _chatElementModel;
  @override
  List<Map<String, dynamic>> get chatElementModel {
    if (_chatElementModel is EqualUnmodifiableListView)
      return _chatElementModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatElementModel);
  }

  @override
  final int idCurrentUser;
  @override
  final String nameOtherUser;
  @override
  final String imgChat;

  @override
  String toString() {
    return 'ChatState.succsess(chatElementModel: $chatElementModel, idCurrentUser: $idCurrentUser, nameOtherUser: $nameOtherUser, imgChat: $imgChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Succsess &&
            const DeepCollectionEquality()
                .equals(other._chatElementModel, _chatElementModel) &&
            (identical(other.idCurrentUser, idCurrentUser) ||
                other.idCurrentUser == idCurrentUser) &&
            (identical(other.nameOtherUser, nameOtherUser) ||
                other.nameOtherUser == nameOtherUser) &&
            (identical(other.imgChat, imgChat) || other.imgChat == imgChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatElementModel),
      idCurrentUser,
      nameOtherUser,
      imgChat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccsessCopyWith<_$_Succsess> get copyWith =>
      __$$_SuccsessCopyWithImpl<_$_Succsess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)
        succsess,
    required TResult Function(Object? error) failure,
  }) {
    return succsess(chatElementModel, idCurrentUser, nameOtherUser, imgChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult? Function(Object? error)? failure,
  }) {
    return succsess?.call(
        chatElementModel, idCurrentUser, nameOtherUser, imgChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult Function(Object? error)? failure,
    required TResult orElse(),
  }) {
    if (succsess != null) {
      return succsess(chatElementModel, idCurrentUser, nameOtherUser, imgChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succsess value) succsess,
    required TResult Function(_Failure value) failure,
  }) {
    return succsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succsess value)? succsess,
    TResult? Function(_Failure value)? failure,
  }) {
    return succsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succsess value)? succsess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (succsess != null) {
      return succsess(this);
    }
    return orElse();
  }
}

abstract class _Succsess implements ChatState {
  const factory _Succsess(
      final List<Map<String, dynamic>> chatElementModel,
      final int idCurrentUser,
      final String nameOtherUser,
      final String imgChat) = _$_Succsess;

  List<Map<String, dynamic>> get chatElementModel;
  int get idCurrentUser;
  String get nameOtherUser;
  String get imgChat;
  @JsonKey(ignore: true)
  _$$_SuccsessCopyWith<_$_Succsess> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ChatStateCopyWithImpl<$Res, _$_Failure>
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
    return 'ChatState.failure(error: $error)';
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
    required TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)
        succsess,
    required TResult Function(Object? error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
    TResult? Function(Object? error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> chatElementModel,
            int idCurrentUser, String nameOtherUser, String imgChat)?
        succsess,
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
    required TResult Function(_Succsess value) succsess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succsess value)? succsess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succsess value)? succsess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatState {
  const factory _Failure({final Object? error}) = _$_Failure;

  Object? get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
