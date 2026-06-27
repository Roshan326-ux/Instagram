import 'package:flutter/material.dart';
import 'package:instagram_app/Screens/Profile/Postscreenprofile.dart';
import 'package:instagram_app/Screens/Profile/Tagsscreen.dart';

import '../../Widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "lock.png"),
            SizedBox(width: 5),
            Text(
              "Anonymous",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: "Shape.png"),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                UiHelper.CustomImage(imgurl: "pic.png"),
                Row(
                  children: [
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Post", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Text(
                          "854",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Followers", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        Text(
                          "140",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Post", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "    Anonymous",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "    Digital goodies designer is @pixsellx \n    Everything is designed",
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 343,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Center(child: Icon(Icons.add, size: 30)),
                      ),
                      SizedBox(height: 10),
                      Text("New"),
                    ],
                  ),

                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Oval (1).png"),
                      ),
                      SizedBox(height: 10),
                      Text("Friends"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Oval (2).png"),
                      ),
                      SizedBox(height: 10),
                      Text("Sports"),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Oval (3).png"),
                      ),
                      SizedBox(height: 10),
                      Text("Design"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 60,
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(icon: UiHelper.CustomImage(imgurl: "grid.png")),
                    Tab(icon: UiHelper.CustomImage(imgurl: "Tags Icon.png")),
                  ],
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [Postscreenprofile(), Tagsscreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
