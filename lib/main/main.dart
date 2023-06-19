import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/data/model/channal_model.dart';
import 'package:test_magnit/firebase_options.dart';
import 'package:test_magnit/main/bloc/theme_bloc.dart';
import 'package:test_magnit/main/bloc/theme_state.dart';
import 'package:test_magnit/presentation/auth_screen/auth_screen.dart';
import 'package:test_magnit/presentation/auth_screen/bloc/auth_cubit.dart';
import 'package:test_magnit/presentation/chat_screen/block/chat_cubit.dart';
import 'package:test_magnit/presentation/chat_screen/chat_screen.dart';
import 'package:test_magnit/presentation/hello_screen/bloc/hellow_cubit.dart';
import 'package:test_magnit/presentation/hello_screen/hello_screen.dart';
import 'package:test_magnit/presentation/main_screen/block/main_cubit.dart';
import 'package:test_magnit/presentation/main_screen/main_screen.dart';
import 'package:test_magnit/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import '../data/model/user_model.dart';

Future<void> main()async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create:(context)=> ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) => state.when(
              light: () {
                return TelegramApp(
                  themeMode: ThemeMode.light,
                );
              },
              dark: () => TelegramApp(themeMode: ThemeMode.dark))),
    );
  }
}

class TelegramApp extends StatelessWidget {
  final ThemeMode themeMode;

  const TelegramApp({
    super.key,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      //home: const MainScreen(),
      routes: {
        '/': (context) => BlocProvider<HellowCubit>(
              create: (context) => HellowCubit()..initialData(),
              child: const HelloScreen(),
            ),
        '/auth_screen': (context) => BlocProvider<AuthCubit>(
              create: (context) => AuthCubit()..initialData(),
              child: const AuthScreen(),
            ),
        '/main_screen': (context) => BlocProvider<MainCubit>(
              create: (context) => MainCubit()..initialData(),
              child: const MainScreen(),
            ),
      },
      themeMode: themeMode,
      onGenerateRoute: (routesSettings) {
        switch (routesSettings.name) {
          case "/chat_screen":
            final arguments = routesSettings.arguments;
            return MaterialPageRoute(
                builder: (_) => BlocProvider<ChatCubit>(
                    create: (context) =>
                        ChatCubit()..initialData(arguments as ChannalModel),
                    child: const ChatScreen()));
        }
      },
      initialRoute: '/',
    );
  }
}
