import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/StatusTile.dart';
import 'package:whatsapp_clone/widgets/avathardp.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 10),
      children: [
        ListTile(
          leading: Stack(
            children: [
              StatusCircle(
                url: 'avathar1',
              ),
              Positioned(
                  bottom: -1,
                  right: -1,
                  child: Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Center(
                        child: Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.white,
                    )),
                  ))
            ],
          ),
          title: Container(
            height: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Tab to add Status update')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Divider(
            color: Colors.grey[400],
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Recent updates',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.grey[800],
                fontSize: 15),
          ),
        ),
        StatusTile(
          url: 'avr2',
          name: 'name1',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr3',
          name: 'name2',
          time: 'Today 9:38pm',
        ),
        StatusTile(
          url: 'avr4',
          name: 'name3',
          time: 'Today 6:20pm',
        ),
        StatusTile(
          url: 'avr5',
          name: 'name4',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'yatin',
          name: 'name5',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr2',
          name: 'name6',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr3',
          name: 'name7',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr4',
          name: 'name1',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr2',
          name: 'name1',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr3',
          name: 'name2',
          time: 'Today 9:38pm',
        ),
        StatusTile(
          url: 'avr4',
          name: 'name3',
          time: 'Today 6:20pm',
        ),
        StatusTile(
          url: 'avr5',
          name: 'name4',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'yatin',
          name: 'name5',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr2',
          name: 'name6',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr3',
          name: 'name7',
          time: 'Today 9:40pm',
        ),
        StatusTile(
          url: 'avr4',
          name: 'name1',
          time: 'Today 9:40pm',
        )
      ],
    );
  }
}

class StatusCircle extends StatelessWidget {
  final String url;
  const StatusCircle({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
      height: 60,
      width: 60,
      child: Center(
        child: Avathardp(url: url, shape: BorderRadius.circular(100)),
      ),
    );
  }
}
