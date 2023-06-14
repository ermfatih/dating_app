import 'package:flutter/material.dart';
part 'dark_colors.dart';
part 'light_colors.dart';
@immutable
class AppColors{
  final Color white = const Color(0xffffffff);
  final Color green = const Color(0xff7bed8d);
  final Color mediumGrey = const Color(0xffa6bcd0);
  final Color mediumGreyBold = const Color(0xff748a9d);
  final Color lighterGrey = const Color(0xfff0f4f8);
  final Color lightGrey = const Color(0xffdbe2ed);
  final Color darkerGrey = const Color(0xff404e5a);
  final Color darkGrey = const Color(0xff4e5d6a);
  final Color bitterSweet = const Color(0xFFFF6969);
  final Color athensGray = const Color(0xFFe7eaf0);
}

abstract class IColors{
  AppColors get colors;
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color? tabBarSelectedColor;
  Color? tabBarNormalColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
  Color? textColor;
  Color? bottomAppBarColor;
  Color? cardShadowColor;
  Color? cursorColor;
}