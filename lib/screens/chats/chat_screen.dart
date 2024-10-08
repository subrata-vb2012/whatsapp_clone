import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/appbar.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_filter.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_filter_row.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/floating_action_small.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/floating_button.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';
import 'package:whatsapp_ui_clone/widgets/app_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: ListView(children: [
        AppTextField(
          hintText: 'Ask Meta AI or Search',
          prefixIcon: Image.asset(
            'assets/images/ai.png',
            scale: 22,
          ),
        ),
        const SizedBox(height: 18),
        const ChatFilterRow(),
      ]),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ChatFloatingActionSmall(),
          SizedBox(height: 10),
          ChatFloatingButton()
        ],
      ),
    );
  }
}
