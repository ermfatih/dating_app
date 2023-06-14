import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>{
  ThemeData get themeData2=>Theme.of(context);
}
class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends BaseState<Hello> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
