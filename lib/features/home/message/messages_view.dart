import 'package:dating_app/core/extensions/context_extension.dart';
import 'package:dating_app/features/home/message/widgets/messages_list_view.dart';
import 'package:dating_app/features/home/message/widgets/past_matches_list_view.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  MessagesView({Key? key}) : super(key: key);
  final ScrollController controller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Messages'),
      ),
      body: Padding(
        padding: context.paddingLowAll,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText(context,'Geçmiş eşleşmeler'),
              Divider(color: Colors.orange),
              SizedBox(
                height: context.dynamicHeight(0.13),
                child: PastMatchesListView(),
              ),
              Divider(color: Colors.red),
              _buildText(context,'Mesajlar'),
              MessagesListView(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
  Text _buildText(BuildContext context,String text) => Text(text,style: context.textTheme.headlineSmall);
}



