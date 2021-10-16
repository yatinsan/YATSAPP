import 'package:flutter/material.dart';

class chatsCount extends StatelessWidget {
  const chatsCount({
    Key? key,
    required this.count,
  }) : super(key: key);

  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Chats '),
        Container(
          width: 25,
          height: 25,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          child: Center(
            child: Text(
              count,
              style: TextStyle(color: Colors.amber),
            ),
          ),
        )
      ],
    );
  }
}
