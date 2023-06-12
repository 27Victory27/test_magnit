import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/data/model/user_model.dart';
import '../../../data/repository/chat_element_repo.dart';
import '../../../data/repository/user_repo.dart';
import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(const ChatState.loading());

  final ChatElementRepo chatElementRepo = ChatElementRepo();
  final UserRepo userRepo = UserRepo();

  Future<void> initialData() async {
    final chatElementList = await chatElementRepo.getChatElements();
    final List<Map<String, dynamic>> listMapElemnts = [];
    for (int index = 0; index < chatElementList.length; index++) {
      final time = DateTime.fromMillisecondsSinceEpoch(chatElementList[index].msgTime);
      listMapElemnts.add({
        "message": chatElementList[index],
        "time": (time.day.toString() + ":" + time.month.toString())
      });
    }
    try {
      final resultUserRepo = await userRepo.getCurrentUser();
      emit(ChatState.succsess(listMapElemnts,resultUserRepo.userId));
    } catch (e) {
      emit(ChatState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return true;
  }
}
