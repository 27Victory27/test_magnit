import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';
@freezed
class MainState with _$MainState{
  const factory MainState.loading() = _Loading;
  const factory MainState.succsess() = _Succsess;
  const factory MainState.failure({Object? error}) = _Failure;
}