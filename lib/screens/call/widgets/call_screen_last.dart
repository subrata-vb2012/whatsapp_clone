import 'package:flutter/material.dart';

class CallScreenLast extends StatelessWidget {
  const CallScreenLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          thickness: 0.5,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 12),
            RichText(
                text: const TextSpan(
                    text: '    Your personal call are ',
                    style: TextStyle(fontSize: 10),
                    children: [
                  TextSpan(
                      text: 'end-to-end encrypted',
                      style: TextStyle(color: Colors.green, fontSize: 10))
                ])),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
