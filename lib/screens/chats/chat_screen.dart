import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/chats/controller.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/appbar.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_box.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_filter_row.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/floating_action_small.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/floating_button.dart';
import 'package:whatsapp_ui_clone/widgets/app_text_field.dart';

class ChatScreen extends ReactiveStateWidget<ChatController> {
  const ChatScreen({super.key});

  @override
  BindController<ChatController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => ChatController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: Observer(
          listenable: controller.contactList,
          listener: (contact) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              children: [
                AppTextField(
                  hintText: 'Ask Meta AI or Search',
                  prefixIcon: Image.asset(
                    'assets/images/ai.png',
                    scale: 22,
                  ),
                ),
                const SizedBox(height: 18),
                const ChatFilterRow(),
                const SizedBox(height: 18),
                if (controller.contactList.isEmpty)
                  const Center(
                    child: Text('Loading....'),
                  ),
                if (controller.contactList.isNotEmpty)
                  ...controller.contactList.map((toElement) {
                    return ChatBox(
                      onTap: () {},
                      name: toElement.author.toString(),
                      lastMessage:
                          toElement.author!.split(' ').reversed.join() +
                              toElement.author!.split(' ').reversed.join(),
                      time:
                          '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} AM',
                      imageUrl: toElement.downloadUrl.toString(),
                    );
                  }),
              ],
            );
          }),
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ChatFloatingActionSmall(),
          SizedBox(height: 10),
          ChatFloatingButton()
        ],
      ),
    );
  }
}
