import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';
import 'chat_person_container_row.dart';

class ChatPersonNotifications extends StatelessWidget {
  const ChatPersonNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonContainer(
      child: Column(
        children: [
          ChatPersonContainerRow(
              icon: Icon(Icons.notifications), text: 'Notification'),
          SizedBox(height: 25),
          ChatPersonContainerRow(
              icon: Icon(Icons.photo), text: 'Media visibility')
        ],
      ),
    );
  }
}
