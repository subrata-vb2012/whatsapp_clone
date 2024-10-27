import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/screen/chat_person_profile_screen.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat2chat.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/type_textfields.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 70,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => ChatPersonProfileScreen(
                        image: image, name: name, no: '98004665022')));
          },
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
        ),
        title: name.contains('a')
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  const Text('Last seen today at 10:51 AM',
                      style: TextStyle(fontSize: 12))
                ],
              )
            : Text(name),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.videocam_outlined, size: 32)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(child: Text('View contact')),
                    const PopupMenuItem(child: Text('Media, links, and docs')),
                    const PopupMenuItem(child: Text('Search')),
                    const PopupMenuItem(child: Text('Mute notification')),
                    const PopupMenuItem(child: Text('Disappearing messages')),
                    const PopupMenuItem(child: Text('Wallpaper')),
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('More'),
                            Icon(Icons.arrow_forward_ios_rounded, size: 15)
                          ],
                        ),
                      ),
                    ),
                  ]),
        ],
      ),
      body: const Column(
        children: [
          Expanded(child: Chat2chat()),
          TypeTextfields(),
        ],
      ),
    );
  }
}
