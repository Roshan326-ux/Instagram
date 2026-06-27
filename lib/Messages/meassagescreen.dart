import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

class Meassagescreen extends StatelessWidget{
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img" : "Oval (5).png",
      "name" : "maxjacobson",
      "message" : "Thank you, bro!"
    },
    {
      "img" : "Oval (6).png",
      "name" : "jamie.franco",
      "message" : "Yup, I'm going to travel in To…"
    },
    {
      "img" : "Oval (7).png",
      "name" : "m_humphrey",
      "message" : "Yup, I'm going to travel in To…"
    },
    {
      "img" : "Oval (5).png",
      "name" : "maxjacobson",
      "message" : "Thank you, bro!"
    },
    {
      "img" : "Oval (6).png",
      "name" : "jamie.franco",
      "message" : "Yeap, I'm going to travel in To…"
    },
    {
      "img" : "Oval (7).png",
      "name" : "m_humphrey",
      "message" : "Yeap, I'm going to travel in To…"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
        title: Text("Roshan_Goyal2026", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: UiHelper.CustomImage(imgurl: "Add Chat.png"),
          )
        ],
      ),
      body:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 34,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color(0XFF262626),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(fontWeight: FontWeight.normal),
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    leading: UiHelper.CustomImage(imgurl: arrContent[index]["img"].toString()),
                    title: Text(arrContent[index]["name"].toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    subtitle: Text(arrContent[index]["message"].toString(), style: TextStyle(color: Colors.grey),),
                    trailing: UiHelper.CustomImage(imgurl: "Picture.png"),
                  );
                },
                  itemCount: arrContent.length,
                ),
              )
            ],
          ),
    );
  }
}