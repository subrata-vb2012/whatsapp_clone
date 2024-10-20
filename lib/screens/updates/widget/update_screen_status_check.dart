import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class UpdateScreenStatusCheck extends StatelessWidget {
  const UpdateScreenStatusCheck(
      {super.key, required this.text, required this.onp});

  final String text;
  final Function() onp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: const TextStyle(color: AppColorConst.fillTextColor, fontSize: 12)),
        IconButton(onPressed: onp, icon: const Icon(Icons.arrow_drop_down))
      ],
    );
  }
}
