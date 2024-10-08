import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class ChatFilter extends StatelessWidget {
  const ChatFilter({super.key, required this.filterText, required this.onTap});

  final String filterText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 7),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
            color: AppColorConst.fillColor,
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          filterText,
          textAlign: TextAlign.center,
          style:
              const TextStyle(color: AppColorConst.fillTextColor, fontSize: 12),
        ),
      ),
    );
  }
}
