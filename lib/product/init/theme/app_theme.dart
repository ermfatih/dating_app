
import 'package:dating_app/product/init/theme/colors/color_theme.dart';
import 'package:dating_app/product/init/theme/text/text_theme.dart';
import 'package:dating_app/product/init/theme/text/text_theme_dark.dart';
import 'package:dating_app/product/init/theme/text/text_theme_light.dart';
import 'package:flutter/material.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}
class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: theme.colors.colors.bitterSweet,
      unselectedItemColor: theme.colors.colors.darkGrey,
      type: BottomNavigationBarType.shifting,
    ),
    fontFamily: theme.textTheme.fontFamily,
    textTheme: theme.textTheme.data,
    cardColor: theme.colors.colorScheme?.onSecondary,
    brightness: theme.colors.colorScheme?.brightness,
    canvasColor: Colors.red,
    cardTheme: CardTheme(shadowColor: theme.colors.cardShadowColor),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: theme.colors.colors.bitterSweet),
    elevatedButtonTheme:
    ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
    )),
    tabBarTheme: TabBarTheme(
      labelPadding: EdgeInsets.zero,
      indicator: const BoxDecoration(),
      labelColor: theme.colors.tabBarSelectedColor,
      unselectedLabelColor: theme.colors.tabBarNormalColor,
    ),
    iconTheme: IconThemeData(color: theme.colors.colors.darkGrey, size: 24),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: theme.textTheme.subtitle2,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: theme.colors.cursorColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: theme.colors.colors.white, backgroundColor: theme.colors.colors.mediumGreyBold),
    appBarTheme: AppBarTheme(color: theme.colors.appBarColor, elevation: 0),
    bottomAppBarTheme: BottomAppBarTheme(color: theme.colors.bottomAppBarColor),
    scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
    colorScheme: theme.colors.colorScheme,
  );
}

class AppThemeDark extends ITheme {
  AppThemeDark() {
    textTheme = TextThemeDark(colors.colors.mediumGrey);
  }
  @override
  late final ITextTheme textTheme;
  @override
  IColors get colors => DarkColors();
}

class AppThemeLight extends ITheme {
  AppThemeLight() {
    textTheme = TextThemeLight(colors.textColor);
  }

  @override
  late final ITextTheme textTheme;

  @override
  IColors get colors => LightColors();
}