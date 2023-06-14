import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PastMatchesListView extends StatelessWidget {
  const PastMatchesListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: context.dynamicWidth(0.1),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset('asset/png/human.png'),
                ),
              ),
            ),
            Text('isim')
          ],
        );
      },);
  }
}
