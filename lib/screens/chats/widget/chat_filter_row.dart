import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_filter.dart';

class ChatFilterRow extends StatelessWidget {
  const ChatFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ChatFilter(filterText: 'All', onTap: () {}),
        ChatFilter(filterText: 'Unread', onTap: () {}),
        ChatFilter(filterText: 'Favorites', onTap: () {}),
        ChatFilter(filterText: 'Groups', onTap: () {}),
      ],
    );
  }
}
