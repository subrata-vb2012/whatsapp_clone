import 'package:flutter/material.dart';
import '../../../utils/color.dart';
import '../../../widgets/popup_menu_button.dart';

PreferredSizeWidget chatAppBar() {
  return AppBar(
    title: const Text(
      'WhatsApp',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w500,
        color: AppColorConst.white,
      ),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
      popupMenuList[0],
    ],
  );
}
