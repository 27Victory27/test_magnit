import 'package:freezed_annotation/freezed_annotation.dart';

part 'hellow_state.freezed.dart';
@freezed
class HellowState with _$HellowState{
  const factory HellowState.loading() = _Loading;
  const factory HellowState.wasShown() = _WasShown;
  const factory HellowState.firstTime() = _FirstTime;
  const factory HellowState.failure({Object? error}) = _Failure;
}