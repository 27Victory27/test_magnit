import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repository/chennal_repo.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(): super(const MainState.loading());

  final ChennnalRepo chennalRepo = ChennnalRepo();

  Future<void> initialData() async {
    try {
      emit(MainState.succsess(await chennalRepo.getChennals()));
    } catch (e) {
      emit(MainState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return true;
  }
}
