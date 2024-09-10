// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayari/Control/forAds.dart';
import 'package:shayari/View/secondHomePage.dart';
import 'package:shayari/View/secondHomePage1.dart';
import 'package:shayari/View/secondHomePage10.dart';
import 'package:shayari/View/secondHomePage11.dart';
import 'package:shayari/View/secondHomePage3.dart';
import 'package:shayari/View/secondHomePage4.dart';
import 'package:shayari/View/secondHomePage5.dart';
import 'package:shayari/View/secondHomePage6.dart';
import 'package:shayari/View/secondHomePage7.dart';
import 'package:shayari/View/secondHomePage8.dart';
import 'package:shayari/View/secondHomePage9.dart';
import 'package:shayari/View/secoondHomePage2.dart';

import '../Model/color.dart';

class homeScreen extends StatelessWidget with color {
  homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = [
      "प्रेम-भरी 💕",
      "दर्द-भरी 🥺",
      "दोस्ती 🤝",
      "अभिप्रेरण 🏅",
      "माँ 👩🏾‍🍼",
      "पापा 🧔🏻",
      "भाई 👬🏻",
      "बहन 👧",
      "मनोभाव 👑",
      "ब्रेकअप 💔",
      "राष्ट्र 🌍",
      "सैनिक 🫡",
    ];

    _handlePermission();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text(
          "शायरी-बाजी",
          style:
              TextStyle(fontSize: 35, color: hbar, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      backgroundColor: hSBack,
      body: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: hBodr,
                border: Border.all(width: 4, color: Colors.pinkAccent),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black54, spreadRadius: 4, blurRadius: 8)
                ]),
            child: ListTile(
              leading: Image.asset('image/$index.png'),
              title: Center(
                child: Text(categoryList[index],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: hFont,
                    )),
              ),
              focusColor: focus,
              trailing: const Icon(Icons.arrow_forward_ios),
              mouseCursor: MouseCursor.defer,
              hoverColor: hover,
              onTap: () {
                if (index == 0) {
                  Get.to(secondHomePage());
                } else if (index == 3) {
                  Get.to(secoondHomePage1());
                } else if (index == 1) {
                  Get.to(secoondHomePage2());
                } else if (index == 2) {
                  Get.to(secoondHomePage3());
                } else if (index == 4) {
                  Get.to(secoondHomePage4());
                } else if (index == 5) {
                  Get.to(secoondHomePage5());
                } else if (index == 6) {
                  Get.to(secoondHomePage6());
                } else if (index == 7) {
                  Get.to(secoondHomePage7());
                } else if (index == 8) {
                  Get.to(secoondHomePage8());
                } else if (index == 9) {
                  Get.to(secoondHomePage9());
                } else if (index == 10) {
                  Get.to(secoondHomePage10());
                } else if (index == 11) {
                  Get.to(secoondHomePage11());
                }
              },
            ),
          );
        },
      ),
    );
  }
}

Future<void> _handlePermission() async {
  var status = await Permission.photos.status;
  if (status == PermissionStatus.denied) {
    await Permission.photos.request();
  }
  var status1 = await Permission.manageExternalStorage.status;
  if (status1 == PermissionStatus.denied) {
    await Permission.manageExternalStorage.request();
  }
}
