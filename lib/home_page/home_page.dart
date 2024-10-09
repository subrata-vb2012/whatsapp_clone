import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:whatsapp_ui_clone/home_page/controller.dart';
import 'package:whatsapp_ui_clone/screens/call/call_screen.dart';
import 'package:whatsapp_ui_clone/screens/chats/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/communities/community_screen.dart';
import 'package:whatsapp_ui_clone/screens/updates/update_screen.dart';

class HomePage extends ReactiveStateWidget<HomePageController> {
  const HomePage({super.key});

  @override
  BindController<HomePageController>? bindController() {
    // TODO: implement bindController
    return BindController(controller: () => HomePageController());
  }

  @override
  Widget build(BuildContext context) {
    Map<IconData, String> bottomNavData = {
      Icons.chat_rounded: 'Chats',
      Icons.update: 'Updates',
      Icons.groups: 'Communities',
      Icons.call_outlined: 'Calls',
    };
    List<Widget> widgetList = [
      const ChatScreen(),
      const UpdateScreen(),
      const CommunityScreen(),
      const CallScreen(),
    ];
    return Scaffold(
      body: Observer(
          listenable: controller.currentIndex,
          listener: (index) {
            return widgetList[index];
          }),
      bottomNavigationBar: Observer(
          listenable: controller.currentIndex,
          listener: (currentIndex) {
            return BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: (val) {
                controller.currentIndex.value = val;
              },
              showUnselectedLabels: true,
              unselectedItemColor: Colors.white,
              iconSize: 30,
              type: BottomNavigationBarType.fixed,
              items: List.generate(
                4,
                (index) => BottomNavigationBarItem(
                    icon: controller.currentIndex.value == index
                        ? Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff648e66),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Icon(bottomNavData.keys.elementAt(index)))
                        : Icon(bottomNavData.keys.elementAt(index)),
                    label: bottomNavData.values.elementAt(index)),
              ),
            );
          }),
    );
  }
}
