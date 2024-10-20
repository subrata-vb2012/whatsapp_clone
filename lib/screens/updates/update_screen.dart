import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/chats/controller.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/screen_widget/channel_details.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/screen_widget/mute_updates.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/screen_widget/my_status.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/screen_widget/recent_updates.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/screen_widget/view_updates.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/appbar.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/floating_action_small.dart';
import 'package:whatsapp_ui_clone/screens/updates/widget/floating_button.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends ReactiveState<UpdateScreen, ChatController> {
  @override
  BindController<ChatController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => ChatController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: updatesScreenAppBar,
      body: Observer(
          listenable: controller.contactList,
          listener: (cont) {
            return ListView(
              padding: const EdgeInsets.only(left: 16),
              children: [
                const MyStatus(),
                RecentUpdates(contactList: controller.contactList),
                ViewUpdates(contactList: controller.contactList),
                MuteUpdates(contactList: controller.contactList),
                ChannelDetails(contactList: controller.contactList)
              ],
            );
          }),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          UpdatesScreenFloatingActionSmall(),
          SizedBox(height: 10),
          UpdatesScreenFloatingButton(),
        ],
      ),
    );
  }
}
