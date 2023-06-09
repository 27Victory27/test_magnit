import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
@freezed
class AuthState with _$AuthState{
  const factory AuthState.loading() = _Loading;
  const factory AuthState.notAuth() = _NotAuth;
  const factory AuthState.auth() = _Auth;
  const factory AuthState.failure({Object? error}) = _Failure;
}