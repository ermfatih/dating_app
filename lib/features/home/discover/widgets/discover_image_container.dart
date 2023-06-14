import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DiscoverImageContainer extends StatelessWidget {
  const DiscoverImageContainer({Key? key,}) : super(key: key);
  final double radius=12;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.5),
      width: context.dynamicWidth(.8),
      decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(color: Colors.black,blurRadius:radius ),
            BoxShadow(color: Colors.white,blurRadius:radius ),
          ],
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: AssetImage('asset/png/human.png'))
      ),
    );
  }
}
