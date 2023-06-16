import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/user_model.dart';

part 'account_panel_state.freezed.dart';
@freezed
class AccountPanelState with _$AccountPanelState{
  const factory AccountPanelState.loading() = _Loading;
  const factory AccountPanelState.succsess(UserModel userModel) = _Succsess;
  const factory AccountPanelState.failure({Object? error}) = _Failure;
}