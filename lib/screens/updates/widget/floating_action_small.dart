import 'package:flutter/material.dart';

class UpdatesScreenFloatingActionSmall extends StatelessWidget {
  const UpdatesScreenFloatingActionSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
        backgroundColor: Colors.white12,
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ));
  }
}
