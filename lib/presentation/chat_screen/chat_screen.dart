import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _elements = [
      {
        'massage':
            'kjdfksjdhksjdfhksdjfhskdfjhsdkjfhskjdfhksjdfhskdjfhksdhfkjsd',
        'group': '10 июня'
      },
      {'massage': 'Will', 'group': '10 июня'},
      {'massage': 'skl;dflskdjflksdjflskdfjslkdfj', 'group': '10 июня'},
      {'massage': 'skdjflskdjflsdkfj', 'group': '10 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '9 июня'},
      {'massage': 'Beth', 'group': '9 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '9 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '9 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '8 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '8 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '8 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '7 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '7 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '7 июня'},
      {'massage': 'kljlksdjflskdjflskdfjlskdfj', 'group': '17 июня'},
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const _AppBarInfo(
            nameChat: 'Степан Элизборян', onlineTime: 1686237244),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<dynamic, String>(
                useStickyGroupSeparators: true,
                floatingHeader: true,
                groupBy: (element) => element['group'],
                groupSeparatorBuilder: (String value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                elements: _elements,
                itemBuilder: (BuildContext context, element1) {
                  if (_elements.indexWhere((element) => element == element1) %
                          2 ==
                      0)
                    return MyChatElement(
                        chatMessage:
                            '''1dklgldslksgjlkdfgjldkfgjldkfgjdlfkgjdlfgjdlkfgjdlfkgjdlfkg''');
                  else
                    return OtherChatElement(
                        chatMessage:
                            '''1dklgldslksgjlkdfgjldkfgjldkfgjdlfkgjdlfgjdlkfgjdlfkgjdlfkg''');
                }),
          ),
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
              IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice)),
            ],
          ),
        ],
      ),
    );
  }
}

class _AppBarInfo extends StatefulWidget {
  final String nameChat;
  final int onlineTime;

  const _AppBarInfo({
    Key? key,
    required this.nameChat,
    required this.onlineTime,
  }) : super(key: key);

  @override
  State<_AppBarInfo> createState() => _AppBarInfoState();
}

class _AppBarInfoState extends State<_AppBarInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 3,
            bottom: 7,
            right: 13,
          ),
          child: Container(
            width: 47,
            height: 47,
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
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey[100]),
                    'был(а) в ${widget.onlineTime}')
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        PopupMenuButton<int>(
          onSelected: (item) => handleClick(item),
          itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0, child: Text('Logout')),
            PopupMenuItem<int>(value: 1, child: Text('Settings')),
          ],
        ),
      ],
    );
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

  const MyChatElement({Key? key, required this.chatMessage}) : super(key: key);

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
                  children: [Text("10:27"), Icon(Icons.done_all_sharp)],
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
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 3),
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
