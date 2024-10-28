import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';
import '../../../../utils/color.dart';

class Media extends StatelessWidget {
  const Media({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mediaList = [
      'assets/status/status_1.jpg',
      'assets/status/status_2.jpg',
      'assets/status/status_3.jpg',
      'assets/status/status_4.jpg',
      'assets/status/status_5.jpg',
      'assets/status/status_6.jpg',
      'assets/status/status_7.jpg',
      'assets/status/status_8.jpg',
      'assets/status/status_9.jpg',
      'assets/status/status_10.jpg',
      'assets/status/status_11.jpg',
      'assets/status/status_12.jpg',
      'assets/status/status_13.jpg',
      'assets/status/status_14.jpg',
    ];
    return CommonContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Media,links,and docs',
                style: TextStyle(color: AppColorConst.fillTextColor),
              ),
              TextButton.icon(
                iconAlignment: IconAlignment.end,
                onPressed: () {},
                label: const Text(
                  '11',
                  style: TextStyle(color: AppColorConst.fillTextColor),
                ),
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColorConst.fillTextColor,
                  size: 16,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return Container(
                  margin: const EdgeInsets.all(2),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(mediaList[index]),
                          fit: BoxFit.cover)),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
