import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Postscreenprofile extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanF6GQIUoXHkdMxSEjn1M0-apMwKj6vkYUvIU_LD41A&s",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShJSnrJ5cmEu2ATSO1hEJqhubzMOi0hcut9UxNSKlrOg&s=10",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBB4LQTn0vRq4ydPLp-uTj_lEUHOHYWUU18JlCq5KuMw&s=10",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAIT94xPr2JgMVyn2tOhbgz6Ak534VIQEOJiWTmuzBg&s=10",
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUKnx5pkHyJCQ5wH7HCdRndxJOkrsG4qppQRwn2xYXCw&s=10"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSusBkHcWR-X-9GEx8NkToNbliAWggXO3IMoOWA_6TTrg&s=10"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxIx3O7c1VtfagQRnDDZnuti2It9ZOaWMQU93XtyrFuQ&s=10"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvztYP_LGZFRx4eDtYSxz9EmLbVB1Ic0k3ZxRPwd21aA&s=10"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvQSQVyWbslfxHKlvg5PDb5F9ptPhthLGHz7LvH5Lx6g&s=10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), itemBuilder: (context, index){
          return Container(
            clipBehavior: Clip.antiAlias,
            height: 124,
            width: 124,
            decoration: BoxDecoration(),
            child: Image.network(arrContent[index]["img"].toString(), fit: BoxFit.cover,),
          );
      }, itemCount: arrContent.length,
      ),
    );
  }
}