import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/status.dart';

class StatusTile extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  const StatusTile({
    Key? key,
    required this.url,
    required this.name,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListTile(
        leading: StatusCircle(
          url: url,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(time)
          ],
        ),
      ),
    );
  }
}
