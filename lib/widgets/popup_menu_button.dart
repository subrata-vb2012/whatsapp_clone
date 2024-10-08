import 'package:flutter/material.dart';

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
          const PopupMenuItem(
            value: 'Setting',
            child: Text('Setting'),
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
          const PopupMenuItem(
            value: 'Setting',
            child: Text('Setting'),
          ),
        ]);

PopupMenuButton communityScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Setting',
            child: Text('Setting'),
          ),
        ]);

PopupMenuButton callScreenPopupMenu() => PopupMenuButton(
    itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Clear call log',
            child: Text('Clear call log'),
          ),
          const PopupMenuItem(
            value: 'Setting',
            child: Text('Setting'),
          ),
        ]);
