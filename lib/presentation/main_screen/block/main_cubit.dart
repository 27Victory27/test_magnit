import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(): super(const MainState.loading());

  Future<void> initialData() async {
    try {
      emit(MainState.succsess());
    } catch (e) {
      emit(MainState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return true;
  }
}
