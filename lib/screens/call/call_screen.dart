import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/floating_button.dart';
import '../../utils/color.dart';
import '../../widgets/popup_menu_button.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calls',
          style: TextStyle(
            fontSize: 22,
            color: AppColorConst.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          popupMenuList[3],
        ],
      ),
      floatingActionButton:
          AppFloatingActionButton(icon: Icons.add_call, onp: () {}),
    );
  }
}
