import 'package:flutter/material.dart';
import '../../../../utils/color.dart';
import '../channel_box.dart';

class ChannelDetails extends StatelessWidget {
  const ChannelDetails({super.key, required this.contactList});

  final List contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Channels',
          style: TextStyle(color: AppColorConst.white, fontSize: 20),
        ),
        const SizedBox(height: 5),
        const Text(
          'Stay updated on topics that matter to you. Find channels to follow below.',
          style: TextStyle(color: AppColorConst.fillTextColor, fontSize: 12),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                growable: false,
                contactList.length ~/ 5,
                (index) => ChannelBox(
                  image: contactList[index].downloadUrl.toString(),
                  name: contactList[index].author.toString(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {},
          child: const Text('Explore more'),
        ),
        const SizedBox(height: 210),
      ],
    );
  }
}
