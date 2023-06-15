import '../model/chat_element_model.dart';
import '../model/user_model.dart';

class ChatElementRepo{
  final List<ChatElementModel> myList = [

    //переписка нас(120003984) с (120003986, 'Victory Bbb')
    ChatElementModel(27,120003984,1,'1', 1686320044000),
    ChatElementModel(27,120003986,1,'2', 1686305644000),
    ChatElementModel(27,120003984,1,'3', 1686302044000),
    ChatElementModel(27,120003984,1,'4', 1686294844000),
    ChatElementModel(27,120003986,1,'5', 1686233644000),
    ChatElementModel(27,120003986,1,'5', 1686230044000),
    ChatElementModel(27,120003984,1,'7', 1686226444000),
    ChatElementModel(27,120003986,1,'8', 1686222844000),
    ChatElementModel(27,120003984,1,'3', 1686302044000),
    ChatElementModel(27,120003984,1,'4', 1686294844000),
    ChatElementModel(27,120003986,1,'5', 1686233644000),
    ChatElementModel(27,120003986,1,'5', 1686230044000),
    ChatElementModel(27,120003984,1,'7', 1686226444000),
    ChatElementModel(27,120003984,1,'3', 1686302044000),
    ChatElementModel(27,110003984,1,'4', 1686294844000),
    ChatElementModel(27,110003986,1,'5', 1686233644000),
    ChatElementModel(27,110003986,1,'5', 1686230044000),
    ChatElementModel(27,110003984,1,'7', 1686226444000),
    ChatElementModel(27,120003986,1,'8', 1686222844000),
    ChatElementModel(27,120003984,1,'9', 1686219244000),
    ChatElementModel(27,120003984,1,'testChatElementChennal1', 1686986044000),
    ChatElementModel(27,120003986,1,'testChatElementChennal1', 1687072444000),

    //переписка нас(120003984) с (120003987, 'Victory Ddd')
    ChatElementModel(17,120003984,1,'1', 1686320044000),
    ChatElementModel(17,120003987,1,'2', 1686305644000),
    ChatElementModel(17,120003984,1,'3', 1686302044000),
    ChatElementModel(17,120003984,1,'4', 1686294844000),
    ChatElementModel(17,120003987,1,'5', 1686233644000),
    ChatElementModel(17,120003987,1,'5', 1686230044000),
    ChatElementModel(17,120003984,1,'7', 1686226444000),
    ChatElementModel(17,120003987,1,'8', 1686222844000),
    ChatElementModel(17,120003984,1,'3', 1686302044000),
    ChatElementModel(17,120003984,1,'4', 1686294844000),
    ChatElementModel(17,120003987,1,'5', 1686233644000),
    ChatElementModel(17,120003987,1,'5', 1686230044000),
    ChatElementModel(17,120003984,1,'7', 1686226444000),
    ChatElementModel(17,120003987,1,'8', 1686222844000),
    ChatElementModel(17,120003984,1,'9', 1686219244000),
    ChatElementModel(17,120003984,1,'testChatElementChennal1', 1686986044000),
    ChatElementModel(17,120003987,1,'testChatElementChennal1', 1687072444000),

  ];
  Future< List<ChatElementModel> > getChatElements () async{
    myList.sort((a,b) => a.msgTime.compareTo(b.msgTime));
    return myList;
  }
  Future< List<ChatElementModel> > getChatElementsByChannalID (int idChannal) async{
    final List<ChatElementModel> selectMyList =[];
    for(int i=0;i<myList.length;i++){
      if (myList[i].channalId == idChannal){
        selectMyList.add(myList[i]);
      }
    }
    selectMyList.sort((a,b) => (a.msgTime.compareTo(b.msgTime)));
    return selectMyList;
  }

}