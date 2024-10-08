import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/routes/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: route,
      title: 'WhatsApp Ui',
      theme: ThemeData.dark(),
    );
  }
}
