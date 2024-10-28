import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp_ui_clone/model/contact_model.dart';
import 'package:whatsapp_ui_clone/screens/updates/show_status_screen.dart';
import '../../../../utils/color.dart';
import '../../../../widgets/chat_box.dart';

class RecentUpdates extends StatelessWidget {
  const RecentUpdates({super.key, required this.contactList});

  final List<ContactModel> contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Recent updates',
            style: TextStyle(color: AppColorConst.fillTextColor, fontSize: 12)),
        if (contactList.isEmpty)
          const Center(
            child: Text('Loading....'),
          ),
        if (contactList.isNotEmpty)
          ...List.generate(
              contactList.length ~/ 10,
              (index) => ChatBox(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowStatusScreen(
                                  image:
                                      contactList[index].downloadUrl.toString(),
                                  name: contactList[index].author.toString(),
                                )));
                  },
                  name: contactList[index].author.toString(),
                  lastMessage:
                      '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} AM',
                  imageUrl: contactList[index].downloadUrl.toString())),
      ],
    );
  }
}
