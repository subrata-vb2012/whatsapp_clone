import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/color.dart';
import '../../chats/widget/chat_person_screen/chat_person_container_row.dart';

class SettingDetailsColumn extends StatelessWidget {
  const SettingDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChatPersonContainerRow(
            icon: Icon(Icons.key, color: Colors.grey),
            text: 'Account',
            subText: 'Security notification, change number'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.lock_open, color: Colors.grey),
            text: 'Privacy',
            subText: 'Block contacts, disappearing messages'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.face, color: Colors.grey),
            text: 'Avatar',
            subText: 'Create, edit, profile photo'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            text: 'Favorite',
            subText: 'Add, reorder, remove'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.chat_outlined, color: Colors.grey),
            text: 'Chat',
            subText: 'Theme, wallpapers, chat history'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.grey),
            text: 'Notification',
            subText: 'Message, group & call tones'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.recycling, color: Colors.grey),
            text: 'Storage and Data',
            subText: 'Network usages, auto-download'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.language, color: Colors.grey),
            text: 'App Language',
            subText: 'English (device\'s language)'),
        const ChatPersonContainerRow(
            icon: Icon(Icons.help_outline, color: Colors.grey),
            text: 'Help',
            subText: 'Help center, contact us, privacy policy'),
        const ChatPersonContainerRow(
          icon: Icon(Icons.group, color: Colors.grey),
          text: 'Invite a friends',
        ),
        const ChatPersonContainerRow(
          icon: Icon(Icons.security_update_good, color: Colors.grey),
          text: 'App updates',
        ),
        const SizedBox(height: 15),
        const Text(
          'Also from Meta',
          style: TextStyle(color: AppColorConst.fillTextColor),
        ),
        const SizedBox(height: 15),
        ChatPersonContainerRow(
          icon: SvgPicture.asset(
            'assets/svg/instagram.svg',
            color: Colors.grey,
            height: 25,
          ),
          text: 'Open Instagram',
        ),
        ChatPersonContainerRow(
          icon: SvgPicture.asset(
            'assets/svg/facebook.svg',
            color: Colors.grey,
            height: 25,
          ),
          text: 'Open Facebook',
        ),
        ChatPersonContainerRow(
          icon: SvgPicture.asset(
            'assets/svg/threads.svg',
            color: Colors.grey,
            height: 25,
          ),
          text: 'Open Threads',
        ),
      ],
    );
  }
}
