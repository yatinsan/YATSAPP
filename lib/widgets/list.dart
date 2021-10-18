import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/avathardp.dart';

class ListUser extends StatelessWidget {
  final String url;
  final String name;
  final String count;
  final String message;

  const ListUser(
      {required this.name,
      required this.url,
      required this.count,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.only(top: 4, bottom: 4, left: 15, right: 15),
        onTap: () {
          print(name);
        },
        onLongPress: () {
          print(message);
        },
        leading: Avathardp(
          url: url,
          shape: BorderRadius.circular(5),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                Text(message)
              ],
            ),
            Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2:40',
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        count,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
