import 'dart:async';

import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:dating_app/core/extensions/string_extensions.dart';
import 'package:dating_app/core/widgets/text/locale_text.dart';
import 'package:dating_app/features/home/discover/widgets/discover_filled_button.dart';
import 'package:dating_app/features/home/discover/widgets/discover_image_container.dart';
import 'package:dating_app/product/init/lang/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  final double radius=12;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [

      ],title: LocaleText(LocaleKeys.discover_peopleNearby),),
      body: Padding(
        padding: context.paddingLowAll,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocaleText(LocaleKeys.discover_peopleNearby,style: context.textTheme.headlineSmall),
            Expanded(child: AnimatedPageView()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
              DiscoverFilledButton(icon:Icons.add),
              DiscoverFilledButton(icon: Icons.password)
            ],)
          ],
        ),
      ),
    );
  }
}

class AnimatedPageView extends StatefulWidget {
  const AnimatedPageView({super.key,});
  @override
  State<AnimatedPageView> createState() => _AnimatedPageViewState();
}

class _AnimatedPageViewState extends State<AnimatedPageView> {
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollBehavior: MaterialScrollBehavior(),
      onPageChanged: (value) {
        setState(() {
          selectedIndex=value;
        });
      },
      itemCount: 5,
     itemBuilder: (context, index) {
      var scale=selectedIndex==index ? 1.0: 0.8;
       return TweenAnimationBuilder(
           curve: Curves.ease,
           tween: Tween<double>(begin: scale,end: scale), duration: Duration(milliseconds: 300),
           child: const Padding(
             padding: EdgeInsets.all(30.0),
             child: DiscoverImageContainer(),
           ),
           builder: (context, value, child) {
             return Transform.scale(
               scale: value as double,
               child: child,
             );
           },
         );
     },
    );
  }
}
//FlipCard(fill: Fill.fillBack,front: DiscoverImageContainer(), back: DiscoverImageContainer()),
