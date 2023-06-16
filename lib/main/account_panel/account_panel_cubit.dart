import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/user_repo.dart';
import 'account_panel_state.dart';

class AccountPanelCubit extends Cubit<AccountPanelState> {
  AccountPanelCubit(): super(const AccountPanelState.loading());

  final UserRepo userRepo = UserRepo();

  Future<void> initialData() async {
    try {
      emit(AccountPanelState.succsess(await userRepo.getCurrentUser()));
    } catch (e) {
      emit(AccountPanelState.failure(error: e));
    }
  }
}