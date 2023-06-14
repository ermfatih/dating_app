import 'dart:ui';

import 'package:dating_app/product/init/theme/text/text_theme.dart';
import 'package:flutter/material.dart';


class TextThemeLight implements ITextTheme{
  @override
  late final TextTheme data;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  String? fontFamily;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline2;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;

  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor){
    data=TextTheme(
        headline6: headline6,
        bodyText1: bodyText1,
        headline2: headline2,
        bodyText2: bodyText2,
        subtitle1: subtitle1,
        headline3: headline3,
        subtitle2: subtitle2
    ).apply(displayColor: primaryColor);
  }
}