import 'package:flutter/material.dart';
import 'package:instagram_app/Screens/Heart/Following/following.dart';
import 'package:instagram_app/Screens/Heart/You/You.dart';

class Heartscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Following"),
              Tab(text: "You"
              ),
            ],),
        ),
        body: TabBarView(children: [
          Following(),
          You()
        ]),
      ),
    );
  }
}
