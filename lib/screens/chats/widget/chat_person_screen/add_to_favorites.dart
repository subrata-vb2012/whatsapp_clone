import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/chat_person_container_row.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';

class ChatPersonAddToFavorites extends StatelessWidget {
  const ChatPersonAddToFavorites({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        children: [
          const ChatPersonContainerRow(
              icon: Icon(Icons.favorite_border), text: 'Add to Favorites'),
          const SizedBox(height: 25),
          ChatPersonContainerRow(
            icon: const Icon(
              Icons.block,
              color: Colors.red,
            ),
            text: 'Block $name',
            textColor: Colors.red,
          ),
          const SizedBox(height: 25),
          ChatPersonContainerRow(
            icon: const Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
            text: 'Report $name',
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
