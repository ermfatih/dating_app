import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DiscoverFilledButton extends StatelessWidget {
  const DiscoverFilledButton({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  final double elevation=12;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        shadowColor: Colors.black,
          elevation: elevation,
          disabledBackgroundColor: Colors.orange,
        fixedSize: Size(context.width*0.38,context.height*.09),
        backgroundColor: Colors.red
      ),onPressed: () {
    }, child:Icon(icon,size: context.width*.15,));
  }
}