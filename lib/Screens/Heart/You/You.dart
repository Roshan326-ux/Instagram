import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

class You extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Follow request",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 106,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text("New", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 5),
                  ListTile(
                    leading: UiHelper.CustomImage(imgurl: 'girl.png'),
                    title: Text(
                      "karenamne liked 3 photo. 1h",
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text("Today", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(height: 5),
            ListTile(
              leading: UiHelper.CustomImage(imgurl: 'Profiles.png'),
              title: Text(
                "kiero_d, zackjohn and 26 others liked your photo. 3h",
                style: TextStyle(fontSize: 14),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text("This Week", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            ListTile(
              leading: UiHelper.CustomImage(imgurl: 'Oval (5).png'),
              title: Text(
                "craig_love mentioned you in a comment: @jacob_w exactly..",
                style: TextStyle(fontSize: 15),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  UiHelper.CustomImage(imgurl: "boy.png"),
                  SizedBox(width: 10),
                  Text(
                    "martini_rond started \nfollowing you.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Message"),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  UiHelper.CustomImage(imgurl: "girl1.png"),
                  SizedBox(width: 10),
                  Text(
                    "martini_rond started \nfollowing you.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Message"),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  UiHelper.CustomImage(imgurl: "boy1.png"),
                  SizedBox(width: 10),
                  Text(
                    "martini_rond started \nfollowing you.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Message"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
