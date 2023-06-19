part of 'theme.dart';
ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextThemeDark(),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff131A2A),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      // ThemeTextStyles.light,
      // ThemeGradients.light,
    ],
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: AppBarTheme(backgroundColor: Color(0xff252D3A)),
  );
}