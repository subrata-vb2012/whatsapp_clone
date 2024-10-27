import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';
import '../../../../utils/color.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('A Smooth Sea Never Made a Skilled Sailor'),
          Text(
            'January 30,2023',
            style: TextStyle(color: AppColorConst.fillTextColor),
          )
        ],
      ),
    );
  }
}
