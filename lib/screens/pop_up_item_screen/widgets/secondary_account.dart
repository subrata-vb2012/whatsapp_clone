import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class SecondaryAccountListTile extends StatelessWidget {
  const SecondaryAccountListTile(
      {super.key,
      required this.name,
      required this.mobNo,
      this.showImage = true,
      required this.checkBoxValue});

  final String name;
  final String mobNo;
  final bool? showImage;
  final bool checkBoxValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: showImage!
          ? const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))
          : const CircleAvatar(
              radius: 30,
              child: Center(
                child: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
              ),
            ),
      title: Text(name),
      subtitle: Text(
        mobNo,
        style:
            const TextStyle(fontSize: 12, color: AppColorConst.fillTextColor),
      ),
      trailing: Checkbox(
          shape: const CircleBorder(),
          value: checkBoxValue,
          onChanged: (value) {
            checkBoxValue != value;
          }),
    );
  }
}
