import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(): super(const AuthState.loading());

  Future<void> initialData() async {
    try {
      emit(AuthState.notAuth());
    } catch (e) {
      emit(AuthState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return true;
  }
}
