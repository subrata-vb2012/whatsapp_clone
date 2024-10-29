import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/pop_up_item_screen/settings_screen.dart';

List<PopupMenuButton> popupMenuList = [
  chatScreenPopupMenu(),
  updateScreenPopupMenu(),
  communityScreenPopupMenu(),
  callScreenPopupMenu(),
];

PopupMenuButton chatScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'New group',
            child: Text('New group'),
          ),
          const PopupMenuItem(
            value: 'New broadcast',
            child: Text('New broadcast'),
          ),
          const PopupMenuItem(
            value: 'Linked device',
            child: Text('Linked device'),
          ),
          const PopupMenuItem(
            value: 'Started messages',
            child: Text('Started messages'),
          ),
          const PopupMenuItem(
            value: 'Payment',
            child: Text('Payment'),
          ),
          PopupMenuItem(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhatAppsSettingScreen()));
            },
            value: 'Setting',
            child: const Text('Setting'),
          ),
        ]);

PopupMenuButton updateScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Status privacy',
            child: Text('Status privacy'),
          ),
          const PopupMenuItem(
            value: 'Create channel',
            child: Text('Create channel'),
          ),
          PopupMenuItem(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhatAppsSettingScreen()));
            },
            value: 'Setting',
            child: const Text('Setting'),
          ),
        ]);

PopupMenuButton communityScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhatAppsSettingScreen()));
            },
            value: 'Setting',
            child: const Text('Setting'),
          ),
        ]);

PopupMenuButton callScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Clear call log',
            child: Text('Clear call log'),
          ),
          PopupMenuItem(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WhatAppsSettingScreen()));
            },
            value: 'Setting',
            child: const Text('Setting'),
          ),
        ]);
