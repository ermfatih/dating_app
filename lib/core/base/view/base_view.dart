import 'package:flutter/material.dart';
class BaseView<T> extends StatefulWidget {
  const BaseView({Key? key, required this.onPageBuilder, required this.viewModel, required this.onModelReady, required this.onDispose}) : super(key: key);
  final Widget Function(BuildContext context,T value) onPageBuilder;
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback onDispose;
  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if(widget.onModelReady!=null) widget.onModelReady(widget.viewModel);
  }
  @override
  void dispose() {
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
