import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class ChatBox extends StatelessWidget {
  const ChatBox(
      {super.key,
      required this.onTap,
      required this.name,
      required this.lastMessage,
      this.time = '',
      required this.imageUrl,
      this.showBadge = false});

  final Function() onTap;
  final String imageUrl;
  final String name;
  final String lastMessage;
  final String? time;
  final bool? showBadge;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      titleAlignment: ListTileTitleAlignment.top,
      onTap: onTap,
      leading: Stack(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imageUrl),
          ),
          if (showBadge == true)
            const CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
              child: Badge(
                padding: EdgeInsets.all(1),
                backgroundColor: Colors.green,
                label: Icon(Icons.add, size: 18, color: Colors.black),
              ),
            )
        ],
      ),
      title: Text(name),
      subtitle: Text(
        lastMessage,
        style: const TextStyle(
            color: AppColorConst.fillTextColor,
            overflow: TextOverflow.ellipsis),
      ),
      trailing: Text(
        time!,
        style: const TextStyle(color: AppColorConst.fillTextColor),
      ),
    );
  }
}
