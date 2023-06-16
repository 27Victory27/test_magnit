part of 'theme.dart';
ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      // ThemeTextStyles.light,
      // ThemeGradients.light,
    ],
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent.shade700),
  );
}