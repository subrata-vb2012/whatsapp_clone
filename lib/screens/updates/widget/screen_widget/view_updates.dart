import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/update_screen_status_check.dart';
import '../../../../widgets/chat_box.dart';

class ViewUpdates extends StatelessWidget {
  const ViewUpdates({super.key, required this.contactList});

  final List contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UpdateScreenStatusCheck(
          text: 'Viewed updates',
          onp: () {},
        ),
        ...List.generate(contactList.length ~/ 10, (index) {
          return ChatBox(
              onTap: () {},
              name: contactList[index].author.toString(),
              lastMessage:
                  '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} AM',
              imageUrl: contactList[index].downloadUrl.toString());
        }),
      ],
    );
  }
}
