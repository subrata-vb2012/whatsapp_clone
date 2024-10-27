import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class Chat2chat extends StatelessWidget {
  const Chat2chat({super.key});

  @override
  Widget build(BuildContext context) {
    String randomStr;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (context, index) {
          randomStr = randomAlpha(randomBetween(10, 30));
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: randomStr.contains('p')
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Text(randomStr,
                    style: TextStyle(
                        fontSize: 15,
                        backgroundColor: randomStr.contains('p')
                            ? const Color(0xff363638)
                            : const Color(0xff204F46))),
                Text('  9:36 PM ',
                    style: TextStyle(
                        fontSize: 10,
                        backgroundColor: randomStr.contains('p')
                            ? const Color(0xff363638)
                            : const Color(0xff204F46))),
                if (!randomStr.contains('p'))
                  const Icon(Icons.done_all, color: Colors.blue)
              ],
            ),
          );
        });
  }
}
