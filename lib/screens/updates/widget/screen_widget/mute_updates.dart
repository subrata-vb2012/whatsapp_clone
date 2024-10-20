import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/update_screen_status_check.dart';
import '../../../../widgets/chat_box.dart';

class MuteUpdates extends StatelessWidget {
  const MuteUpdates({super.key, required this.contactList});

  final List contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UpdateScreenStatusCheck(
          text: 'Muted updates',
          onp: () {},
        ),
        ...List.generate(contactList.length ~/ 15, (index) {
          return ChatBox(
              onTap: () {},
              name: contactList[index].author.toString(),
              lastMessage:
                  '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} AM',
              imageUrl: contactList[index].downloadUrl.toString());
        }),
        const Divider(thickness: .3),
        const SizedBox(height: 10),
      ],
    );
  }
}
