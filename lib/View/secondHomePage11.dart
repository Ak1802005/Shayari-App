
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/soilder.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage11 extends StatelessWidget with color{
  secoondHomePage11({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "भारतीय सेना सच्चे मायनों में साहस का प्रतीक है,",
      "जहाँ कहीं खड़ा हो जाता है भारत का वीर सिपाही,",
      "भारतीय सेना दिवस प्रतीक है सेना के सम्मान का,",
      "भारतीय सेना को देख,",
      "भारतीय सेना दिवस का हर लम्हा हो कुछ खास,",
      "भारत के युवाओं में हमेशा जोश का संचार करता है,",
      "जैसे अग्नि की लपटे मिटाती है अंधकार,",
      "वीर रस में गाथाएं गाना,",
      "भारतीय सेना दिवस के इस अवसर पर आओ संगठित हो जाएं ,",
      "वो जो सबसे दूर है,",
      "मैदान में जब जान बन आई,",
      "एक वीर है वो,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("सैनिक शायरी 🫡"
            "",style: TextStyle(fontSize: 25,color: hbar,fontWeight: FontWeight.w800),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      backgroundColor: hSBack,
      body: ListView.builder(
        itemCount: category1.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: hBodr,
                border: Border.all(width: 4,color: Colors.pinkAccent),
                boxShadow: const [BoxShadow(color: Color(0xFFFF02EA),spreadRadius: 4,blurRadius: 4)]),
            child: ListTile(
              onTap: () {
                Get.to(Soilder(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('💂🔫🏅🪖⚔️🥷🏽',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
              subtitle:  Center(
                child: Text(category1[index],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: hFont,)),
              ),
              focusColor: focus,
              trailing: const Icon(Icons.double_arrow_rounded),
              mouseCursor: MouseCursor.defer,
              hoverColor: hover,
            ),
          );
        },),
    );
  }
}
