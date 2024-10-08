import 'package:flutter/material.dart';
import '../../utils/color.dart';
import '../../widgets/popup_menu_button.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Communities',
          style: TextStyle(
            fontSize: 22,
            color: AppColorConst.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          popupMenuList[2],
        ],
      ),
    );
  }
}
