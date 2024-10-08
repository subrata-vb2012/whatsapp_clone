import 'package:flutter/material.dart';

class ChatFloatingActionSmall extends StatelessWidget {
  const ChatFloatingActionSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.white12,
      onPressed: () {},
      child: Image.asset(
        'assets/images/ai.png',
        scale: 22,
      ),
    );
  }
}
