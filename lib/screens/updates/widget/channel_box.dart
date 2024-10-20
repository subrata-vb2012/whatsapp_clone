import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class ChannelBox extends StatelessWidget {
  const ChannelBox({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: 160,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            fit: StackFit.loose,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundImage: NetworkImage(image),
              ),
              if (name.contains('a'))
                const Icon(
                  Icons.verified_rounded,
                  color: Colors.blue,
                  size: 30,
                )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: AppColorConst.fillTextColor, fontSize: 16),
          ),
          const SizedBox(height: 5),
          FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.green.shade200),
              onPressed: () {},
              child: const Text(
                'Follow',
              ))
        ],
      ),
    );
  }
}
