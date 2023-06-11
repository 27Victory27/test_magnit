import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/presentation/auth_screen/auth_screen.dart';
import 'package:test_magnit/presentation/auth_screen/bloc/auth_cubit.dart';
import 'package:test_magnit/presentation/chat_screen/chat_screen.dart';
import 'package:test_magnit/presentation/hello_screen/bloc/hellow_cubit.dart';
import 'package:test_magnit/presentation/hello_screen/hello_screen.dart';
import 'package:test_magnit/presentation/main_screen/block/main_cubit.dart';
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
        '/' : (context) => BlocProvider<HellowCubit>(
          create: (context) => HellowCubit()..initialData(),
          child: const HelloScreen(),
        ),
        '/auth_screen': (context) => BlocProvider<AuthCubit>(
          create: (context) => AuthCubit()..initialData(),
          child: const AuthScreen(),
        ),
        '/main_screen':(context) => BlocProvider<MainCubit>(
          create: (context) => MainCubit()..initialData(),
          child: const MainScreen(),
        ),
        '/chat_screen' : (context) => ChatScreen(),
      },
      initialRoute: '/auth_screen',
    );
  }
}

