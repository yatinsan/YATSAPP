import 'package:flutter/material.dart';

class Chatfeeld extends StatelessWidget {
  final String usn;
  const Chatfeeld({Key? key, this.usn = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.grey[800],
        ),
        title: Opname(
          online: true,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey[800],
            ),
            itemBuilder: (BuildContext context) {
              return {
                'op1',
                'New',
                'Ll2',
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
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Messagebar(
            send: false,
            message: 'message1',
          ),
          Messagebar(
            send: true,
            message: 'message2',
          ),
          Messagebar(
            send: false,
            message: 'message3',
          ),
          Messagebar(
            send: true,
            message: 'message4 \n hello',
          ),
          Messagebar(
            send: false,
            message: 'message5',
          ),
          Messagebar(
            send: false,
            message: 'message1',
          ),
        ],
      ),
    );
  }
}

class Messagebar extends StatelessWidget {
  final bool send;
  final String message;
  const Messagebar({
    Key? key,
    this.send = false,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return send ? SendMessage(message: message) : RecMessage(message: message);
  }
}

class RecMessage extends StatelessWidget {
  const RecMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        // padding: EdgeInsets.only(right: 10),
        margin: EdgeInsets.only(left: 20),
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset('assets/profilepic/profile.jpg'),
        ),
      ),
      contentPadding: EdgeInsets.all(0),
      title: Container(
        margin: EdgeInsets.only(right: 60),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          message,
          textAlign: TextAlign.justify,
          // softWrap: true,
        ),
      ),
    );
  }
}

class SendMessage extends StatelessWidget {
  const SendMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        // padding: EdgeInsets.only(right: 10),
        margin: EdgeInsets.only(right: 20),
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset('assets/profilepic/me.jpg'),
        ),
      ),
      contentPadding: EdgeInsets.all(0),
      title: Container(
        margin: EdgeInsets.only(left: 60),
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          message,
          textAlign: TextAlign.justify,
          // softWrap: true,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Opname extends StatelessWidget {
  final bool online;
  const Opname({
    Key? key,
    required this.online,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.zero,
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('assets/profilepic/profile.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'dr. name',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  online
                      ? Icon(
                          Icons.circle,
                          color: online
                              ? Colors.greenAccent[700]
                              : Colors.grey[700],
                          size: 14,
                        )
                      : Text(''),
                  Text(
                    online ? ' online' : 'offline',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
