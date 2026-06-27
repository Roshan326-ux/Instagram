import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

class Following extends StatelessWidget {
  var arrContent = [
    {
      "img": "girl1.png",
      "text": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (4).png",
      "text": "jimmy start following you . 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (5).png",
      "text": "james liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (6).png",
      "text": "bob liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "girl1.png",
      "text": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (4).png",
      "text": "jimmy start following you . 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (5).png",
      "text": "james liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },
    {
      "img": "Oval (6).png",
      "text": "bob liked 3 posts. 3h",
      "lastimg": "Rectangle.png",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                leading: UiHelper.CustomImage(
                  imgurl: arrContent[index]["img"].toString(),),
                  title: Text(arrContent[index]["text"].toString()),
                trailing: UiHelper.CustomImage(imgurl: arrContent[index]["lastimg"].toString()),

              ),
            );
          },
          itemCount: arrContent.length,
        ),
      ),
    );
  }
}
