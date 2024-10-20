import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class NoContactDetailsScreen extends StatelessWidget {
  const NoContactDetailsScreen({super.key, required this.contactList});

  final List contactList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Favorites',
            style: TextStyle(
              fontSize: 16,
              color: AppColorConst.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const ListTile(
          leading: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite, color: Colors.black)),
          title: Text('Add favorite', style: TextStyle(fontSize: 16)),
        ),
        if (contactList.isEmpty)
          const Column(
            children: [
              SizedBox(height: 200),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'To start calling contacts who have WhatsApp, tap 📞 at the bottom of your screen',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
      ],
    );
  }
}
