import 'package:flutter/material.dart';
import '../../../../widgets/chat_box.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text('Status',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        const SizedBox(height: 10),
        ChatBox(
          onTap: () {},
          name: 'My status',
          lastMessage: 'Tap to add status update',
          imageUrl:
              'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          time: '',
          showBadge: true,
        ),
      ],
    );
  }
}
