import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

import '../../Messages/meassagescreen.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "Your Story",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "karennne",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "zackjohn",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "kieron_d",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "Your Story",
    },
    {
      "img":
          "",
      "name": "karennne",
    },
    {
      "img":
          "",
      "name": "zackjohn",
    },
    {
      "img":
          "",
      "name": "kieron_d",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        leading: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
        title: UiHelper.CustomImage(imgurl: "smallInsta.png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Meassagescreen()),
              );
            },
            icon: UiHelper.CustomImage(imgurl: "Messanger.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        arrContent[index]["img"].toString(),
                      ),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrContent[index]["name"].toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    );
                  },
                  itemCount: arrContent.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Container(
              height: 54,
              width: double.infinity,
              color: Colors.black12,
              child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "Oval.png"),
                title: Text(
                  "joshua_I",
                  style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
                ),
                subtitle: Text(
                  "Tokyo, japan",
                  style: TextStyle(fontSize: 11, color: Color(0XFFF9F9F9)),
                ),
                trailing: UiHelper.CustomImage(imgurl: "More Icon.png"),
              ),
            ),
            SizedBox(height: 5),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: UiHelper.CustomImage(imgurl: "Rectangle (1).png"),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  UiHelper.CustomImage(imgurl: "Like.png"),
                  SizedBox(width: 15),
                  UiHelper.CustomImage(imgurl: "Comment.png"),
                  SizedBox(width: 15),
                  UiHelper.CustomImage(imgurl: "Messanger.png"),
                  SizedBox(width: 220),
                  UiHelper.CustomImage(imgurl: "Save.png"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                SizedBox(
                  height: 25,
                  width: 25,
                  child: UiHelper.CustomImage(imgurl: "Oval (5).png"),
                ),
                SizedBox(width: 5),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 13, color: Colors.white),
                    children: [
                      TextSpan(text: "Liked by "),
                      TextSpan(
                        text: "roshan-_goyal2026",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "44,889 others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "roshan_goyal2026",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                Text(
                  " The game in Japan was amazing ",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}