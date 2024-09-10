
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage4 extends StatelessWidget with color{
  secoondHomePage4({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "मेरी तकदीर में कभी कोई गम नहीं होता,",
      "मेरी माँ आज भी अनपढ़ ही है,",
      "कौन सी है वो चीज़ जो यहाँ नहीं मिलती,",
      "हर गली, हर शहर, हर देश-विदेश देखा,",
      "लबों पे उसके कभी बदुआ नहीं होती,",
      "पहाड़ो जैसे सदमे झेलती है उम्र भर लेकिन,",
      "माँ हमें अच्छी जिंदगी जीने की राह बताती है,",
      "ममता के सागर से भरी है वो माँ की मूरत,",
      "पिता हमेशा निम के पेड़ जैसा होता है,",
      "मां तो मां होती है, जो जानती है,",
      "मेरी बस इतनी सी कहानी है,",
      "एक अच्छी मां तो हर बेटे के पास होती है,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("माँ शायरी 👩🏾‍🍼"
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
                Get.to(Ma(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('👩‍👧‍👧👵🏼👩‍👧🌍🤰🏼👑',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
