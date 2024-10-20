import 'package:flutter/cupertino.dart';
import '../call_box.dart';

class CallList extends StatelessWidget {
  const CallList({super.key, required this.contactList});

  final List contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (contactList.isNotEmpty) const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text('Recent', style: TextStyle(fontSize: 14)),
        ),
        ...List.generate(
          contactList.length ~/ 10,
          (index) => CallBox(
              imageUrl: contactList[index].downloadUrl.toString(),
              name: contactList[index].author.toString()),
        ),
      ],
    );
  }
}
