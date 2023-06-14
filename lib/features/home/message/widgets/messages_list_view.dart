import 'package:flutter/material.dart';

class MessagesListView extends StatelessWidget {
  const MessagesListView({
    super.key,
    required this.controller,
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(),
          subtitle: Text('Son mesaj'),
          title: Text('Resim'),
        );
      },);
  }
}