import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
      color: Colors.black,
      child: child,
    );
  }
}
