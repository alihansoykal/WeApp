import 'package:WE/Screens/BottomNavigation/Leaderboard/Tabs/tab_friends.dart';
import 'package:WE/Resources/components/overScrollHandler.dart';
import 'package:WE/Resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:WE/example.dart';

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text('Lider Tablosu'), backgroundColor: kPrimaryColor),
      body: OverScroll(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(child: Text("Genel", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                  Tab(child: Text("Arkadaşlar", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                ],
                labelColor: kPrimaryColor,
                unselectedLabelColor: Colors.black,
                indicatorColor: kPrimaryColor,
              ),
              Expanded(child: TabBarView(children: [Example(), FriendsTab()]))
            ],
          ),
        ),
      ),
    );
  }
}
