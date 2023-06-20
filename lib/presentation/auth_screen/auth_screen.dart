import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_cubit.dart';
import 'bloc/auth_state.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final controller = TextEditingController();
  final controllerSMS = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.shield_outlined,
                    size: 27,
                  ),
                )
              ],
            ),
            body: BlocBuilder<AuthCubit, AuthState>(
              builder: (BuildContext context, AuthState state) => state.when(
                auth: () {
                  Future.delayed(Duration.zero,()=> Navigator.of(context)
                      .pushReplacementNamed('/main_screen'));
                  return CircularProgressIndicator();
                  },
                notAuth: () => ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 30, bottom: 60),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.black),
                                  'Номер телефона'),
                              SizedBox(height: 15),
                              Text(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey[600]),
                                  'Проверье код страны и введите свой номер телефона.'),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    labelText: "Страна",
                                    suffixIcon: Icon(Icons.chevron_right)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: controller,
                                keyboardType: TextInputType.none,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    labelText: "Номер телефона",
                                    labelStyle: TextStyle(color: Colors.blue),
                                    suffixIcon: Icon(Icons.qr_code),
                                    prefix: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.black),
                                          ' +'),
                                    )),
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
                                          style:
                                              TextStyle(color: Colors.grey[600]),
                                          'Продолжая, вы соглашаетесь с'),
                                      Text(
                                          style:
                                              TextStyle(color: Colors.blue[700]),
                                          'Пользовательским Соглашением'),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  IconButton(
                                      iconSize: 60,
                                      color: Colors.blue,
                                      onPressed: () {
                                          context.read<AuthCubit>().authPhone(
                                             "+"+controller.text);
                                        // Navigator.of(context)
                                        //     .pushReplacementNamed('/main_screen');
                                      },
                                      icon: Icon(Icons.arrow_circle_right)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "1", controller: controller),
                                      _NumButton(
                                          str: "2", controller: controller),
                                      _NumButton(str: "3", controller: controller)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "4", controller: controller),
                                      _NumButton(
                                          str: "5", controller: controller),
                                      _NumButton(str: "6", controller: controller)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "7", controller: controller),
                                      _NumButton(
                                          str: "8", controller: controller),
                                      _NumButton(str: "9", controller: controller)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: Container()),
                                      _NumButton(
                                          str: "0", controller: controller),
                                      _NumButton(
                                          str: "del", controller: controller)
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
                loading: () {
                  return Container(
                    color: Colors.white,
                  );
                },
                failure: (error) => Container(
                  color: Colors.red,
                  child: Center(child:Text(error.toString())),
                ),
                codeSent: () {
                  return ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 30, bottom: 60),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.black),
                                  'Номер телефона'),
                              SizedBox(height: 15),
                              Text(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey[600]),
                                  'Проверье код страны и введите свой номер телефона.'),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    labelText: "Страна",
                                    suffixIcon: Icon(Icons.chevron_right)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                enabled: false,
                                keyboardType: TextInputType.none,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)),
                                    labelText: "Номер телефона",
                                    labelStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: Icon(Icons.qr_code),
                                    prefix: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.black),
                                          ' +'),
                                    )),
                              ),
                              TextField(controller: controllerSMS,keyboardType: TextInputType.none,),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          style:
                                          TextStyle(color: Colors.grey[600]),
                                          'Продолжая, вы соглашаетесь с'),
                                      Text(
                                          style:
                                          TextStyle(color: Colors.blue[700]),
                                          'Пользовательским Соглашением'),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  IconButton(
                                      iconSize: 60,
                                      color: Colors.blue,
                                      onPressed: () {
                                          context.read<AuthCubit>().singInWithSMS(
                                              controllerSMS.text);
                                        // Navigator.of(context)
                                        //     .pushReplacementNamed('/main_screen');
                                      },
                                      icon: Icon(Icons.arrow_circle_right)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "1", controller: controllerSMS),
                                      _NumButton(
                                          str: "2", controller: controllerSMS),
                                      _NumButton(str: "3", controller: controllerSMS)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "4", controller: controllerSMS),
                                      _NumButton(
                                          str: "5", controller: controllerSMS),
                                      _NumButton(str: "6", controller: controllerSMS)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      _NumButton(
                                          str: "7", controller: controllerSMS),
                                      _NumButton(
                                          str: "8", controller: controllerSMS),
                                      _NumButton(str: "9", controller: controllerSMS)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: Container()),
                                      _NumButton(
                                          str: "0", controller: controllerSMS),
                                      _NumButton(
                                          str: "del", controller: controllerSMS)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
              },
              ),
            )));
  }
}

class _NumButton extends StatelessWidget {
  final String str;
  final TextEditingController controller;

  const _NumButton({Key? key, required this.str, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade200),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(color: Colors.grey.shade300)))),
            onPressed: () {
              if (str != "del") {
                controller.text += str;
              }else{
                controller.text = controller.text.substring(0,controller.text.length-1);
              }
            },
            child:
                Text(style: TextStyle(fontSize: 23, color: Colors.black), str)),
      ),
    );
  }
}
