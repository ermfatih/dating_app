import 'package:auto_size_text/auto_size_text.dart';
import 'package:dating_app/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

class LocaleText extends StatelessWidget {
  const LocaleText(this.text, {Key? key, this.style}) : super(key: key);
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text.locale,style: style,);
  }
}
