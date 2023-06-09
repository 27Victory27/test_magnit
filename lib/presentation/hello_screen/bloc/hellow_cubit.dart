import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/presentation/hello_screen/bloc/hellow_state.dart';

class HellowCubit extends Cubit<HellowState> {
  HellowCubit(): super(const HellowState.loading());

  Future<void> initialData() async {
    try {
      final result = await wasShown();
      if (result) {
        emit(HellowState.wasShown());
      } else {
        emit(HellowState.firstTime());
      }
    } catch (e) {
      emit(HellowState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return false;
  }
}
