import 'package:flutter/material.dart';

class ChatPersonSmallContainer extends StatelessWidget {
  const ChatPersonSmallContainer(
      {super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 90,
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white24),
      ),
      child: Center(
        child: Column(
          children: [
            Icon(icon, size: 25, color: Colors.greenAccent),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
