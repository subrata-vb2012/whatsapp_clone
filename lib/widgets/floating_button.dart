import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton(
      {super.key, required this.icon, required this.onp});

  final IconData icon;
  final Function() onp;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onp,
      backgroundColor: Colors.green,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
