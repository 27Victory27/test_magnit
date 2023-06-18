import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/data/model/channal_model.dart';
import 'package:test_magnit/data/model/chat_element_model.dart';
import 'package:test_magnit/data/model/user_model.dart';
import '../../../data/repository/chat_element_repo.dart';
import '../../../data/repository/user_repo.dart';
import 'chat_state.dart';
import 'package:intl/intl.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(const ChatState.loading());

  final List<Map<String, dynamic>> listMapElemnts = [];

  final ChatElementRepo chatElementRepo = ChatElementRepo();
  final UserRepo userRepo = UserRepo();
   ChannalModel? channalModel = null;

  Future<void> initialData(ChannalModel channalModel) async {
    final chatElementList = await chatElementRepo.getChatElementsByChannalID(channalModel.indexChannal);
    this.channalModel = channalModel;
    for (int index = 0; index < chatElementList.length; index++) {
      final time = DateTime.fromMillisecondsSinceEpoch(chatElementList[index].msgTime);
      listMapElemnts.add({
        "message": chatElementList[index],
        "time": (DateFormat('MMMM').format(DateTime(0, time.month)) + " " + time.day.toString())
      });
    }
    try {
      final resultUserRepo = await userRepo.getCurrentUser();
      emit(ChatState.succsess(listMapElemnts,resultUserRepo.userId,channalModel.nameChennal,channalModel.img));
    } catch (e) {
      emit(ChatState.failure(error: e));
    }
  }

  Future<bool> wasShown() async {
    return true;
  }

  Future<void> addMassege(String msg) async {
    final resultUserRepo = await userRepo.getCurrentUser();
    final time = DateTime.now();
    final model  =ChatElementModel(channalModel!.indexChannal, resultUserRepo.userId, 1, msg,  time.millisecondsSinceEpoch);
    listMapElemnts.insert(0,{
      "message": model,
      "time": (DateFormat('MMMM').format(DateTime(0, time.month)) + " " + time.day.toString())
    });
emit(ChatState.loading());
    emit(ChatState.succsess(listMapElemnts,resultUserRepo.userId,channalModel!.nameChennal,channalModel!.img));
  }

}
