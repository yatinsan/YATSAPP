import 'package:flutter/material.dart';

class popup extends StatelessWidget {
  const popup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return {
          'New Group',
          'New broadcast',
          'Linked devices',
          'starred messages',
          'Payments',
          'Settings',
        }.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
