import '../model/chat_element_model.dart';

class ChatElementRepo{
  final List<ChatElementModel> myList = [
    ChatElementModel(1,'testChatElementChennal1', 1686320044),
    ChatElementModel(1,'testChatElementChennal1', 1686305644),
    ChatElementModel(1,'testChatElementChennal1', 1686302044),
    ChatElementModel(1,'testChatElementChennal1', 1686294844),
    ChatElementModel(1,'testChatElementChennal1', 1686233644),
    ChatElementModel(1,'testChatElementChennal1', 1686230044),
    ChatElementModel(1,'testChatElementChennal1', 1686226444),
    ChatElementModel(1,'testChatElementChennal1', 1686222844),
    ChatElementModel(1,'testChatElementChennal1', 1686219244),
    ChatElementModel(1,'testChatElementChennal1', 1686986044),
    ChatElementModel(1,'testChatElementChennal1', 1687072444),
  ];
  Future< List<ChatElementModel> > getChatElements () async{
    return myList;
  }
}