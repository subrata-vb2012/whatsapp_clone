import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/floating_button.dart';
import '../../utils/color.dart';
import '../../widgets/popup_menu_button.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Updates',
          style: TextStyle(
            fontSize: 22,
            color: AppColorConst.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          popupMenuList[1],
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
              backgroundColor: Colors.white12,
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
          const SizedBox(height: 10),
          AppFloatingActionButton(icon: Icons.camera_alt, onp: () {}),
        ],
      ),
    );
  }
}
