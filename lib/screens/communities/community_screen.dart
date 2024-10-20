import 'package:flutter/material.dart';
import '../../utils/color.dart';
import '../../widgets/popup_menu_button.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Communities',
          style: TextStyle(
            fontSize: 22,
            color: AppColorConst.white,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          popupMenuList[2],
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/comm.png'))),
            ),
            const SizedBox(height: 10),
            const Text(
              'Stay connected with a community',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Text(
              'Communities bring members together in topic-based group,and make it easy to get admin announcements. Any community you\' re added to will appear here.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            TextButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 10,
              ),
              label: const Text(
                'See example communities',
                style: TextStyle(
                    color: Colors.blue,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(vertical: 15)),
                      child: const Text('Start your community  ')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
