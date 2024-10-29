import 'package:flutter/material.dart';
import '../../../../utils/color.dart';

class ChatPersonContainerRow extends StatelessWidget {
  const ChatPersonContainerRow(
      {super.key,
      required this.icon,
      required this.text,
      this.subText = '',
      this.widget,
      this.textColor = AppColorConst.white});

  final Widget icon;
  final String text;
  final String? subText;
  final Widget? widget;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 25),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                  if (subText!.isNotEmpty)
                    Text(
                      subText!,
                      style: const TextStyle(
                          color: AppColorConst.fillTextColor, fontSize: 12),
                    ),
                ],
              ),
              const SizedBox(width: 50),
              widget == null ? const Text('') : widget!,
            ],
          ),
        ],
      ),
    );
  }
}
