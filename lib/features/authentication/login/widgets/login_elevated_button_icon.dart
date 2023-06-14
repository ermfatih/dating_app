import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class LoginElevatedButton extends StatelessWidget {
  const LoginElevatedButton({Key? key, required this.text, required this.icon}) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(context.width,context.width*.12),
          maximumSize: Size(context.width,context.width*.12)
      ),
      label: Text(text),
      icon: Icon(icon),
      onPressed: () {},
    );
  }
}