import 'package:flutter/material.dart';
import 'WhatsappHome.dart';
import '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.userna = ''}) : super(key: key);

  final String userna;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsapp',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.amber),
          navigationRailTheme: NavigationRailThemeData(
            backgroundColor: Colors.transparent,
          )),
      // home: Chatfeeld(),
      home: WhatsappHome(),
    );
  }
}
