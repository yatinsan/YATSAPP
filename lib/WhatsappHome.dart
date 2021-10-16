import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chatcount.dart';
import 'package:whatsapp_clone/widgets/popup.dart';
import './pages/status.dart';
import './pages/chats.dart';
import './pages/camera.dart';
import './pages/calls.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "YATSAPP",
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
              splashRadius: 20,
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.more_vert_outlined),
            // ),

            popup()
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Container(
                width: 100,
                child: Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
              ),
              Tab(
                child: chatsCount(
                  count: '30',
                ),
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [Container(), chates(), Status(), Calls()],
        ),
        floatingActionButton: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          child: IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {},
            color: Colors.white,
            splashRadius: 1000,
            splashColor: Colors.red,
          ),
        ));
  }
}
