part of 'color_theme.dart';


class DarkColors implements IColors {
  @override
  final AppColors colors =AppColors();

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

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.mediumGrey;
    tabBarColor = colors.green;
    tabBarNormalColor = colors.lighterGrey;
    tabBarSelectedColor = colors.green;
    colorScheme = const ColorScheme.dark().copyWith(onPrimary: colors.green, onSecondary: colors.darkGrey);
    brightness = Brightness.dark;
    cursorColor = colors.white;
  }



}