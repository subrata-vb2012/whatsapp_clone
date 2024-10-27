import 'package:flutter/material.dart';

class ChatPersonSliverAppBar extends StatelessWidget {
  const ChatPersonSliverAppBar(
      {super.key, required this.name, required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      pinned: true,
      expandedHeight: 150,
      snap: false,
      backgroundColor: Colors.black,
      centerTitle: false,
      title: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      actions: [
        PopupMenuButton(
            itemBuilder: (context) => [
                  const PopupMenuItem(child: Text('Share')),
                  const PopupMenuItem(child: Text('Edit')),
                  const PopupMenuItem(child: Text('View in address book')),
                  const PopupMenuItem(child: Text('Verify security code')),
                ]),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        background: Image.network(image, fit: BoxFit.cover),
        title: Text(name),
        titlePadding: const EdgeInsets.only(left: 130, bottom: 20),
      ),
    );
  }
}
