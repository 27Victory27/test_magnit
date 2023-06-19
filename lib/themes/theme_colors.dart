part of 'theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color myChatElementBackground;
  final Color otherChatElementBackground;
  final Color ThemeChatBackground;

  const ThemeColors({
    required this.myChatElementBackground,
    required this.otherChatElementBackground,
    required this.ThemeChatBackground,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? myChatElementBackground,
    Color? otherChatElementBackground,
    Color? ThemeChatBackground,


  }) {
    return ThemeColors(
      myChatElementBackground: myChatElementBackground ?? this.myChatElementBackground,
      otherChatElementBackground: otherChatElementBackground?? this.otherChatElementBackground,
      ThemeChatBackground: ThemeChatBackground ?? this.ThemeChatBackground,
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
        myChatElementBackground: Color.lerp(myChatElementBackground, other.myChatElementBackground, t)!,
        otherChatElementBackground: Color.lerp(otherChatElementBackground, other.otherChatElementBackground, t)!,
        ThemeChatBackground: Color.lerp(ThemeChatBackground, other. ThemeChatBackground, t)!,
    );
  }

  static get light => ThemeColors(
      myChatElementBackground: Colors.green,
      otherChatElementBackground: Colors.white,
      ThemeChatBackground: Colors.lightGreen

  );

  static get dark => ThemeColors(
      myChatElementBackground: Colors.purpleAccent,
      otherChatElementBackground: Color(0xff252D3A),
      ThemeChatBackground: Color(0xff384056)
  );
}