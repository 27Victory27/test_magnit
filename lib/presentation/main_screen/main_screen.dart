import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: Text(
              style: TextStyle(color: Colors.white),
              'Telegram'
          ),
          actions: [Icon(Icons.search), SizedBox(width: 15,)],
        ),
        drawer: Drawer(
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [ListView.separated(
            separatorBuilder: (BuildContext context,
                int index) => const ChatDivider(),
            itemCount: 16,
            itemBuilder: (BuildContext context, int index) {
              if (index <= 14) {
                return ChatElement(str: index.toString());
              } else {
                return EndChatElemnt();
              }
            },
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(60, 60),
                    backgroundColor: Colors.blue,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                  child: Icon(color: Colors.white, Icons.edit)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatElement extends StatelessWidget {
  final String str;

  const ChatElement({
    Key? key, required this.str,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(style: TextStyle(color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold), 'Aa $str'),
                  Text(
                    'Последнее сообщеsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfние в $str...',
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                    maxLines: 1,),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              children: [
                Text('12:37'),
                Container(
                  width: 23,
                  height: 23,
                  child: Center(
                      child: Text(style: TextStyle(color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold), '27')
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.green,
                  ),

                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ChatDivider extends StatelessWidget {
  const ChatDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Container(
        width: double.infinity,
        height: 0.3,
        color: Colors.grey[500],
      ),
    );
  }
}

class EndChatElemnt extends StatelessWidget {
  const EndChatElemnt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey.shade300, height: 50, child:
      Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 5),
        child: Text("Нажмите на карандаш для началаобщения",style: TextStyle(color: Colors.grey.shade600),),
      ),);
  }
}



