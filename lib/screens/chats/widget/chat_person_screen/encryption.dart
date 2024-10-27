import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';

import 'chat_person_container_row.dart';

class ChatPersonEncryption extends StatelessWidget {
  const ChatPersonEncryption({super.key, required this.isChatLock});

  final ReactiveBool isChatLock;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        children: [
          const ChatPersonContainerRow(
            icon: Icon(Icons.lock),
            text: 'Encryption',
            subText:
                'Messages and calls are end-to-end encrypted. Tap\nto verify.',
          ),
          const SizedBox(height: 25),
          const ChatPersonContainerRow(
            icon: Icon(Icons.av_timer),
            text: 'Disappearing Messages',
            subText: 'Off',
          ),
          const SizedBox(height: 25),
          ChatPersonContainerRow(
            icon: const Icon(Icons.lock_open),
            text: 'Chat lock',
            subText: 'Lock and hide this chat on this device.',
            widget: Switch(
                value: isChatLock.value,
                onChanged: (value) {
                  isChatLock.value = value;
                }),
          )
        ],
      ),
    );
  }
}
