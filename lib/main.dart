import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.grey[900],
      ),
      theme: ThemeData(
          // primaryColor: Color(0xFF004541),
          primaryColor: Colors.amber),
      home: WhatsappHome(),
    );
  }
}
