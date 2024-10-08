import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp_ui_clone/home_page/home_page.dart';
import 'package:whatsapp_ui_clone/screens/call/call_screen.dart';
import 'package:whatsapp_ui_clone/screens/communities/community_screen.dart';
import 'package:whatsapp_ui_clone/screens/updates/update_screen.dart';
import '../screens/chats/chat_screen.dart';

final GoRouter route = GoRouter(
    initialLocation: Path.homePage,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Path.homePage,
        name: 'Home Page',
        pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      ),
      GoRoute(
        path: Path.callScreen,
        name: 'Call Screen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: CallScreen()),
      ),
      GoRoute(
          path: Path.chatScreen,
          name: 'Chat Screen',
          pageBuilder: (context, state) =>
              const MaterialPage(child: ChatScreen())),
      GoRoute(
          path: Path.communityScreen,
          name: 'Community Screen',
          pageBuilder: (context, state) =>
              const MaterialPage(child: CommunityScreen())),
      GoRoute(
          path: Path.updateScreen,
          name: 'Update Screen',
          pageBuilder: (context, state) =>
              const MaterialPage(child: UpdateScreen())),
    ]);

class Path {
  static const homePage = '/';
  static const callScreen = '/callScreen';
  static const chatScreen = '/chatScreen';
  static const communityScreen = '/communityScreen';
  static const updateScreen = '/updateScreen';
}
