import 'package:flutter/material.dart';
import '../../../widgets/floating_button.dart';

class ChatFloatingButton extends StatelessWidget {
  const ChatFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFloatingActionButton(

      onp: () {},
      icon: Icons.add_comment,
    );
  }
}
