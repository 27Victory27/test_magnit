import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.nights_stay)],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 100, right: 100, top: 30, bottom: 60),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 180,
                      height: 180,
                    ),
                    SizedBox(height: 20),
                    Text(
                        style: TextStyle(fontSize: 25, color: Colors.black),
                        'iMe Messenger'),
                    SizedBox(height: 20),
                    Text(
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        'Unofficial client base on Telegram API'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                                style: TextStyle(color: Colors.blue),
                                'Продолжить на русском')),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                        side: BorderSide(color: Colors.blue)))),
                            child: Text(
                                style: TextStyle(color: Colors.white),
                                'Продолжить на русском')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
