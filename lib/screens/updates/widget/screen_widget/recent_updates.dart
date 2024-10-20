import 'package:flutter/cupertino.dart';
import '../../../../utils/color.dart';
import '../../../../widgets/chat_box.dart';

class RecentUpdates extends StatelessWidget {
  const RecentUpdates({super.key, required this.contactList});

  final List contactList;

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
                  onTap: () {},
                  name: contactList[index].author.toString(),
                  lastMessage:
                      '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} AM',
                  imageUrl: contactList[index].downloadUrl.toString())),
      ],
    );
  }
}
