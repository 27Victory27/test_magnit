part of 'theme.dart';

//import 'package:flutter/material.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      // ThemeTextStyles.light,
      // ThemeGradients.light,
    ],
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
  );
}

TextTheme createTextTheme() {
  return const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  );
}
TextTheme createTextThemeDark() {
  return const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  );
}