import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/avathardp.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
        CallLogTile(),
      ],
    );
  }
}

class CallLogTile extends StatelessWidget {
  const CallLogTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 15, right: 10, top: 4, bottom: 4),
      leading: Avathardp(url: 'avr3', shape: BorderRadius.circular(100)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name1',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.north_east,
                color: Colors.green,
                size: 16,
              ),
              Text('Today 9:30'),
            ],
          )
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}
