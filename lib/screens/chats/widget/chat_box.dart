import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class ChatBox extends StatelessWidget {
  const ChatBox(
      {super.key,
      required this.onTap,
      required this.name,
      required this.lastMessage,
      required this.time,
      required this.imageUrl});

  final Function() onTap;
  final String imageUrl;
  final String name;
  final String lastMessage;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.top,
      onTap: onTap,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(
        lastMessage,
        style: const TextStyle(
            color: AppColorConst.fillTextColor,
            overflow: TextOverflow.ellipsis),
      ),
      trailing: Text(
        time,
        style: const TextStyle(color: AppColorConst.fillTextColor),
      ),
    );
  }
}
