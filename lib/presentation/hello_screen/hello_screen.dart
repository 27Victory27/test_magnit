import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/main/bloc/theme_bloc.dart';
import 'package:test_magnit/main/bloc/theme_state.dart';
import 'package:test_magnit/presentation/hello_screen/bloc/hellow_cubit.dart';
import 'package:test_magnit/presentation/hello_screen/bloc/hellow_state.dart';
import 'package:test_magnit/themes/theme.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [BlocBuilder<ThemeCubit, ThemeState>(
          builder: (BuildContext contextBuild, ThemeState stateTheme) =>stateTheme.when(
              light: (){
                return IconButton(
                  icon:  Icon(Icons.nights_stay
                  ),onPressed: (){
                  context.read<ThemeCubit>().setDarkTheme();
                },);
              },
              dark: (){
                return IconButton(
                  icon:  Icon(Icons.sunny
                  ),onPressed: (){
                  context.read<ThemeCubit>().setLightTheme();
                },);
              })
        )],
      ),
      body: BlocBuilder<HellowCubit, HellowState>(
          builder: (BuildContext context, HellowState state) => state.when(
              wasShown: () => CircularProgressIndicator(),
              firstTime: () => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 100, right: 100, top: 30, bottom: 60),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset("assets/images/logo.webp",width: 150,height: 150,),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(
                                      fontSize: 25),
                                  'Telegram'),
                              SizedBox(height: 20),
                              Text(
                                  style: TextStyle(fontSize: 16, color: Colors.grey),
                                  textAlign: TextAlign.center,
                                  'Unofficial client base on Telegram API'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:120, left:30, right: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                          style: TextStyle(fontSize: 17, color: Colors.blue),
                                          'Продолжить на русском')),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                '/auth_screen');
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                  side: BorderSide(
                                                      color: Colors.blue)))),
                                      child: Text(
                                          style: TextStyle(fontSize: 17, color: Colors.white),
                                          'Start Messaging')),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              failure: (error) => Container(
                    color: Colors.red,
                  ),
              loading: () {
                return Container(
                  color: Colors.white,
                );
              })),
    ));
  }
}
