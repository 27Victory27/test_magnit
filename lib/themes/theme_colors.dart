part of 'theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color myChatElementBackground;
  final Color otherChatElementBackground;

  const ThemeColors({
    required this.myChatElementBackground,
    required this.otherChatElementBackground,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? myChatElementBackground,
    Color? otherChatElementBackground,
  }) {
    return ThemeColors(
      myChatElementBackground:
      myChatElementBackground ?? this.myChatElementBackground,
      otherChatElementBackground: otherChatElementBackground?? this.otherChatElementBackground,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other,
      double t,
      ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      myChatElementBackground:
      Color.lerp(myChatElementBackground, other.myChatElementBackground, t)!,
      otherChatElementBackground: Color.lerp(otherChatElementBackground, other.otherChatElementBackground, t)!,
    );
  }

  static get light => ThemeColors(
    myChatElementBackground: Colors.green,
    otherChatElementBackground: Colors.lightGreen,
  );

  static get dark => ThemeColors(
    myChatElementBackground: Colors.purpleAccent,
    otherChatElementBackground: Color(0xff252D3A)
  );
}