import '../model/chat_element_model.dart';

class ChatElementRepo{
  final List<ChatElementModel> myList = [
    ChatElementModel(120003984,1,'1', 1686320044000),
    ChatElementModel(120003986,1,'2', 1686305644000),
    ChatElementModel(120003984,1,'3', 1686302044000),
    ChatElementModel(120003984,1,'4', 1686294844000),
    ChatElementModel(120003986,1,'5', 1686233644000),
    ChatElementModel(120003986,1,'5', 1686230044000),
    ChatElementModel(120003984,1,'7', 1686226444000),
    ChatElementModel(120003986,1,'8', 1686222844000),
    ChatElementModel(120003984,1,'9', 1686219244000),
    ChatElementModel(120003984,1,'testChatElementChennal1', 1686986044000),
    ChatElementModel(120003986,1,'testChatElementChennal1', 1687072444000),
  ];
  Future< List<ChatElementModel> > getChatElements () async{
    return myList;
  }
}