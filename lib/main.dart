import 'package:flutter/material.dart';
import 'package:test_magnit/presentation/auth_screen/auth_screen.dart';
import 'package:test_magnit/presentation/hello_screen/hello_screen.dart';
import 'package:test_magnit/presentation/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MainScreen(),
      routes: {
        '/' : (context) => HelloScreen(),
        '/auth_screen': (context) => AuthScreen(), //--главный экран в навигации
        '/main_screen':(context) => MainScreen(),
      },
      initialRoute: '/',
    );
  }
}

