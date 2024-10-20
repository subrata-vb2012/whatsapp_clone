import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/call/widgets/appbar.dart';
import 'package:whatsapp_ui_clone/screens/call/widgets/call_list.dart';
import 'package:whatsapp_ui_clone/screens/call/widgets/call_screen_last.dart';
import 'package:whatsapp_ui_clone/screens/call/widgets/no_contact_details_screen.dart';
import 'package:whatsapp_ui_clone/screens/chats/controller.dart';
import 'package:whatsapp_ui_clone/widgets/floating_button.dart';

class CallScreen extends ReactiveStateWidget<ChatController> {
  @override
  BindController<ChatController>? bindController() {
    // TODO: implement bindController
    return BindController(
        controller: () => ChatController(), autoDispose: false);
  }

  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: callScreenAppBar,
      body: Observer(
          listenable: controller.contactList,
          listener: (contact) {
            return ListView(
              children: [
                NoContactDetailsScreen(contactList: controller.contactList),
                CallList(contactList: controller.contactList),
                const CallScreenLast(),
              ],
            );
          }),
      floatingActionButton:
          AppFloatingActionButton(icon: Icons.add_call, onp: () {}),
    );
  }
}
