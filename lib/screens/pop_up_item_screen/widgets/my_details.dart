import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/pop_up_item_screen/widgets/secondary_account.dart';
import '../../../utils/color.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Subrata Ghosh'),
                Text(
                  '+91 8967332703',
                  style: TextStyle(
                      fontSize: 12, color: AppColorConst.fillTextColor),
                ),
                Text(
                  ' Sleeping',
                  style: TextStyle(
                      fontSize: 12, color: AppColorConst.fillTextColor),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (ctx) => const SizedBox(
                      height: 200,
                      child: Column(
                        children: [
                          Icon(Icons.horizontal_rule, size: 40),
                          SecondaryAccountListTile(
                              checkBoxValue: false,
                              name: 'Subrata Ghosh',
                              mobNo: '+91 8967332703'),
                          SecondaryAccountListTile(
                            checkBoxValue: false,
                            name: 'Sumanta',
                            mobNo: '+91 9735390703',
                            showImage: false,
                          )
                        ],
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  size: 28,
                  color: Colors.green,
                )),
          ],
        )
      ],
    );
  }
}
