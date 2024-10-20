import 'package:flutter/material.dart';

class CallBox extends StatelessWidget {
  const CallBox({super.key, required this.imageUrl, required this.name});

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name),
        subtitle: Row(
          children: [
            Transform.rotate(
              angle: name.contains('c') ? -5.5 : 3.9,
              child:  Icon(
                Icons.arrow_upward,
                color: name.contains('c') ?Colors.green : Colors.red,
              ),
            ),
            const SizedBox(width: 10),
            const Text('2 minutes ago')
          ],
        ),
        trailing: name.contains('a')
            ? const Icon(Icons.call)
            : const Icon(Icons.videocam_outlined));
  }
}
