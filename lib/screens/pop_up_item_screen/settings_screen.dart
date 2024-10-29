import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/pop_up_item_screen/controller.dart';
import 'package:whatsapp_ui_clone/screens/pop_up_item_screen/widgets/my_details.dart';
import 'package:whatsapp_ui_clone/screens/pop_up_item_screen/widgets/setting_details_column.dart';

class WhatAppsSettingScreen extends ReactiveStateWidget<PopUpScreenController> {
  @override
  BindController<PopUpScreenController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => PopUpScreenController());
  }

  const WhatAppsSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Builder(builder: (context) {
              return const MyDetails();
            }),
            const SizedBox(height: 15),
            const Divider(thickness: 0.7),
            const SizedBox(height: 15),
            const SettingDetailsColumn(),
          ],
        ),
      ),
    );
  }
}
