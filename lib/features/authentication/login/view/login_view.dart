import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../widgets/login_elevated_button_icon.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  final String _path='asset/png/dating.png';
  final String _google='login with facebook';
  final String _facebook='login with google';
  final String _email='login with settings';
  final String _haveAccount='Do you have account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(context.normalValue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(_path),
              context.sizedBoxLowHorizontal,
              Text('eren çok malsın '*15),
              LoginElevatedButton(text: _facebook,icon: Icons.facebook),
              LoginElevatedButton(text: _google,icon: Icons.g_translate_rounded),
              LoginElevatedButton(text: _email,icon: Icons.email),
              TextButton(onPressed: () {}, child: Text(_haveAccount))
            ],
          ),
        ),
      ),
    );
  }
}
