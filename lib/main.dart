import 'package:flutter/material.dart';
import 'WhatsappHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsapp',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.amber)),
      home: WhatsappHome(),
    );
  }
}
