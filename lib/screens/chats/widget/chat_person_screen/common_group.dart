import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/chat_person_container_row.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class ChatPersonCommonGroup extends StatelessWidget {
  const ChatPersonCommonGroup({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '2 Groups in common',
            style: TextStyle(color: AppColorConst.fillTextColor),
          ),
          const SizedBox(height: 20),
          ChatPersonContainerRow(
            icon: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.group,
                color: Colors.black,
              ),
            ),
            text: 'Create group with $name',
          ),
          const SizedBox(height: 20),
          const ChatPersonContainerRow(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr'),
            ),
            text: 'Craftniketan Executors',
            subText: ' Bissau Cs, Kala, Rattan,Apu, Paren, Samanta',
          ),
          const SizedBox(height: 20),
          const ChatPersonContainerRow(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://marketplace.canva.com/EAF0Hq4UHjM/1/0/1600w/canva-orange-phoenix-animal-gaming-logo-WIPEOAyYPIs.jpg'),
            ),
            text: 'LazyTech - Mission YC\' 23',
            subText: 'Apu, Bissau Cs, Kala, Rattan, Paren, Samanta',
          ),
        ],
      ),
    );
  }
}
