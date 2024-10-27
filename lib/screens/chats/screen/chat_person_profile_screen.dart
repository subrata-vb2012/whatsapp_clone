import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/screens/chats/controller/controller.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/add_to_favorites.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/bio.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/chat_person_small_container.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_container.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/common_group.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/encryption.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/media.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/notifications.dart';
import 'package:whatsapp_ui_clone/screens/chats/widget/chat_person_screen/sliver_app_bar.dart';
import 'package:whatsapp_ui_clone/utils/color.dart';

class ChatPersonProfileScreen extends ReactiveStateWidget<ChatController> {
  @override
  BindController<ChatController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => ChatController());
  }

  const ChatPersonProfileScreen(
      {super.key, required this.image, required this.name, required this.no});

  final String image;
  final String name;
  final String no;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ChatPersonSliverAppBar(name: name, image: image),
          SliverList(
            delegate: SliverChildListDelegate([
              const CommonContainer(
                child: Column(
                  children: [
                    Text(
                      '+91 9800262426',
                      style: TextStyle(
                          color: AppColorConst.fillTextColor, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChatPersonSmallContainer(
                            icon: Icons.call, text: 'Audio'),
                        ChatPersonSmallContainer(
                            icon: Icons.videocam_outlined, text: 'Video'),
                        ChatPersonSmallContainer(
                            icon: Icons.currency_rupee, text: 'Pay'),
                        ChatPersonSmallContainer(
                            icon: Icons.search, text: 'Search')
                      ],
                    )
                  ],
                ),
              ),
              const Bio(),
              const Media(),
              const ChatPersonNotifications(),
              Observer(
                  listenable: controller.isChatLock,
                  listener: (chatLock) {
                    return ChatPersonEncryption(
                        isChatLock: controller.isChatLock);
                  }),
              ChatPersonCommonGroup(
                name: name,
              ),
              ChatPersonAddToFavorites(
                name: name,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
