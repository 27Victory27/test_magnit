import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:test_magnit/data/model/chat_element_model.dart';

import 'block/chat_cubit.dart';
import 'block/chat_state.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.blue,
            title: BlocBuilder<ChatCubit, ChatState>(
                builder: (BuildContext context, ChatState state) =>
                    state.maybeWhen(
                      loading: () => CircularProgressIndicator(),
                      succsess: (listMapChatElements, int userID,
                              String nameOtherUser, String imgChat) =>
                          _AppBarInfo(
                              nameChat: nameOtherUser,
                              onlineTime: 1686237244,
                              imgChat: imgChat),
                      orElse: () {
                        return Text('Упс, ошибка');
                      },
                    ))),
        backgroundColor: Colors.green,
        body: BlocBuilder<ChatCubit, ChatState>(
          builder: (BuildContext context, ChatState state) => state.when(
            loading: () => CircularProgressIndicator(),
            succsess: (listMapChatElements, int userID, String nameOtherUser,
                    String imgChat) =>
                Column(
              children: [
                Expanded(
                    child: GroupedListView<Map<String, dynamic>, String>(
                        useStickyGroupSeparators: true,
                        floatingHeader: true,
                        sort:false,
                        groupBy: (element) => element['time'],
                        groupSeparatorBuilder: (String value) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: null,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[800]?.withOpacity(0.2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1, left: 10, right: 10),
                                  child: Text(
                                    value,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        elements: listMapChatElements,
                        itemBuilder: (BuildContext context,
                            Map<String, dynamic> element) {
                          //{"message":ChatElementModel(),"time":9:6}
                          final time =  DateTime.fromMillisecondsSinceEpoch((element["message"] as ChatElementModel).msgTime);
                          if ((element["message"] as ChatElementModel).userId ==
                              userID) {
                            return MyChatElement(
                              chatMessage:
                                  (element["message"] as ChatElementModel)
                                      .msgText,
                              chatMessageTime: time.hour.toString() + ':' + time.minute.toString(),
                            );
                          } else {
                            return OtherChatElement(
                                chatMessage:
                                    (element["message"] as ChatElementModel)
                                        .msgText);
                          }
                        })),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.mood)),
                    Expanded(
                        child: TextField(
                      maxLines: 6,
                      minLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Сообщение',
                        border: InputBorder.none,
                      ),
                    )),
                    IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.keyboard_voice)),
                  ],
                ),
              ],
            ),
            failure: (error) => Container(
              color: Colors.red,
            ),
          ),
        ));
  }
}

class _AppBarInfo extends StatefulWidget {
  final String imgChat;
  final String nameChat;
  final int onlineTime;

  const _AppBarInfo({
    Key? key,
    required this.imgChat,
    required this.nameChat,
    required this.onlineTime,
  }) : super(key: key);

  @override
  State<_AppBarInfo> createState() => _AppBarInfoState();
}

class _AppBarInfoState extends State<_AppBarInfo> {
  bool searchFlag = false;
  final _textField = TextEditingController();
  bool textFieldFlag = false;

  @override
  Widget build(BuildContext context) {
    if (searchFlag == false) {
      return Row(
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_sharp)),
          Padding(
            padding: const EdgeInsets.only(
              top: 3,
              bottom: 7,
              right: 13,
            ),
            child: Container(
              child: Image.asset('assets/images/${widget.imgChat}'),
              width: 47,
              height: 47,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.fade),
                      maxLines: 1,
                      '${widget.nameChat}'),
                  Text(
                      style:
                          TextStyle(fontSize: 14, color: Colors.blueGrey[100]),
                      'был(а) в ${widget.onlineTime}')
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          PopupMenuButton<int>(
            //color: Colors.grey,
            onSelected: (item) => handleClick(item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                  onTap: () {
                    setState(() {
                      searchFlag = true;
                    });
                  },
                  value: 0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                      Text('Поиск')
                    ],
                  )),
              PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.format_paint, color: Colors.black),
                      ),
                      Text('Установить обои')
                    ],
                  )),
            ],
          ),
        ],
      );
    } else {
      return Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  searchFlag = false;
                });
              },
              icon: Icon(Icons.arrow_back_sharp)),
          Expanded(
            child: TextField(
              controller: _textField,
              maxLines: 6,
              minLines: 1,
              onChanged: (text){setState(() {});},
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey[400]),
                hintText: 'Поиск',
                border: InputBorder.none,
              ),
            ),
          ),
          Visibility(
            visible:_textField.text.isNotEmpty,
            child: IconButton(
                onPressed: () {setState(_textField.clear);},
                icon: Icon(Icons.clear)),
          ),
          Visibility(
            visible:_textField.text.isNotEmpty,
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)),
          ),
        ],
      );
    }
  }

  void handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }
}

class MyChatElement extends StatelessWidget {
  final String chatMessage;
  final String chatMessageTime;

  const MyChatElement(
      {Key? key, required this.chatMessage, required this.chatMessageTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 8, bottom: 8, right: 70),
                child: Text('$chatMessage'),
              ),
              FittedBox(
                child: Row(
                  children: [
                    Text('$chatMessageTime'),
                    Icon(Icons.done_all_sharp)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtherChatElement extends StatelessWidget {
  final String chatMessage;

  const OtherChatElement({Key? key, required this.chatMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 8, bottom: 8, right: 70),
                child: Text('$chatMessage'),
              ),
              Text("10:27"),
            ],
          ),
        ),
      ),
    );
  }
}
