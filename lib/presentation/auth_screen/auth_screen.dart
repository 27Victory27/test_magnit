import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.shield_outlined)],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 60),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        'Номер телефона'),
                    SizedBox(height: 20),
                    Text(
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        'Проверье код страны и введите свой номер телефона'),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          disabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Страна",
                          suffixIcon: Icon(Icons.chevron_right)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Номер телефона",
                          labelStyle: TextStyle(color: Colors.blue),
                          suffixIcon: Icon(Icons.qr_code)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                style: TextStyle(color: Colors.grey[600]),
                                'Продолжая, вы соглашаетесь с'),
                            Text(
                                style: TextStyle(color: Colors.blue[700]),
                                'Пользовательским Соглашением'),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                            iconSize: 60,
                            color: Colors.blue,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_circle_right)),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            _NumButton(str: "1"),
                            _NumButton(str: "2"),
                            _NumButton(str: "3")
                          ],
                        ),
                        Row(
                          children: [
                            _NumButton(str: "4"),
                            _NumButton(str: "5"),
                            _NumButton(str: "6")
                          ],
                        ),
                        Row(
                          children: [
                            _NumButton(str: "7"),
                            _NumButton(str: "8"),
                            _NumButton(str: "9")
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            _NumButton(str: "0"),
                            _NumButton(str: "del")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NumButton extends StatelessWidget {
  final String str;

  const _NumButton({Key? key, required this.str}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade200),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(color: Colors.grey.shade300)))),
            onPressed: () {},
            child: Text(style: TextStyle(color: Colors.black), str)),
      ),
    );
  }
}
