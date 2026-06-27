import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/uihelper.dart';

import '../../Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQehNPsAU25GWf79V864KQOntvgHhtDWvlsRw&s",
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7s8jgunlzu9RHZlpQDsmht3vHqCYFmWk4eg&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUkUldxMY_-azYPDMEsrX0qjtKkjN6pnkqNw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFo0esPkOw-P9_Td3fz_H_3375z5Rmpb4Ajw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3MRBY3CNpxA_zzEl8fdtwP74sASAeH6g1ZQ&s"
    },
    {
     "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeUzhAtZL9ElXiENfplVjR5dCJsUQUG2NuXg&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5qYRVsovp7ZtGKAXRId0MRQdlVisR996X-A&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0GgPR8Ul7T8JnYN1PeRA1dB4-lnume8pEg&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrKe4K6ksJyAxWNZaZnBusYATav4bgA8TPw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMx1YSl88oADEMRGXIdsCXi0MeJqcUFwAIAQ&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiHILi3u0UHgy4S0DPv5-fPSVtcYev5uAy0Q&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrrBDmD4yRujp7H4OZiblYRwA7rGYPsPmIvw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OBCToy9tejbWVPkpLs3MqqotRT6syk8-kw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrnd5E5byXsNpo1GewujlKPH900W9dimQJnw&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnZ8SHrr9y3ObCSDpDUuLO8BM0vm1xHvfT6g&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRODR-DBM0CGbdHOtlVlIvnkL1mne9Sm0IyZg&s"
    },
    {
    "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRYMJbiv5GmNIWRvNdVkQU65RXzBD1GexX3Q&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ0PP2j0s34tPXubSSh4wA7Ltt7Fx0jIRB6A&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_sWCnRhy_Evc608nd2_2-NsDXGl3UCg5Ykg&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO71BEj8oEyOcUP7Fbd63JeWp6ZvbiQklDCg&s"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiJnKg6hz4sIA58YfcZBVUSYQFj47VK0AqSA&s"
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                height: 36,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF262626),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: UiHelper.CustomImage(imgurl: "Search Icon.png"),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0XFF8E8E93),
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              UiHelper.CustomImage(imgurl: "Live.png"),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imgurl: "Icon (2).png"),
                    const SizedBox(width: 5),
                    const Text(
                      "IGTV",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 32,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.white, size: 15),
                    SizedBox(width: 5),
                    Text(
                      "Shop",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 32,
                width: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Style",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 32,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sports",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 32,
                width: 53,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auto",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 124,
                  decoration: const BoxDecoration(),
                  child: Image.network(
                    arrContent[index]["img"].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
