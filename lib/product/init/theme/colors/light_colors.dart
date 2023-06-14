part of 'color_theme.dart';

class LightColors implements IColors{
  @override
  final AppColors colors = AppColors();

  @override
  Color? appBarColor;

  @override
  Color? bottomAppBarColor;

  @override
  Brightness? brightness;

  @override
  Color? cardShadowColor;

  @override
  ColorScheme? colorScheme;

  @override
  Color? cursorColor;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  Color? tabBarNormalColor;

  @override
  Color? tabBarSelectedColor;

  @override
  Color? textColor;

  LightColors() {
    cardShadowColor = colors.athensGray;
    bottomAppBarColor = colors.white;
    appBarColor = colors.lighterGrey;
    textColor = Colors.black;
    scaffoldBackgroundColor = colors.lighterGrey;
    brightness = Brightness.light;
    tabBarColor = colors.green;
    tabBarNormalColor = colors.mediumGreyBold;
    tabBarSelectedColor = colors.bitterSweet;
    cursorColor = colors.darkGrey;
    colorScheme = ColorScheme(
      onPrimary: colors.darkGrey,
      onSecondary: colors.white,
      onError: Colors.red,
      onSurface: colors.mediumGreyBold,
      primary: colors.lightGrey,
      secondary: colors.mediumGrey,
      error: colors.bitterSweet,
      onBackground: colors.darkGrey,
      background: colors.lightGrey,
      brightness: Brightness.light,
      surface: colors.white,
    );
  }

}