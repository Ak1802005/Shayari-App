
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/dard.dart';

import '../Model/color.dart';

class secoondHomePage2 extends StatelessWidget with color{
   secoondHomePage2({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category2 = [
      "पलकों में आँसू और दिल में दर्द सोया है,",
      "मैंने जिन्दगी से पूछा..",
      "काश तू पूछे मुझसे मेरा हाल-ए-दिल,",
      "मर जाता हु जब ये सोचता हु,",
      "नखरे तो हम मरने के बाद भी करेंगे,",
      "तुम्हारे शहर में कुछ लोग मुझे जानते है,",
      "एक तुम ही तो थे जो मुझे समनझते थे,",
      "मैं उससे कहता रहा अपने दिल की बातें,",
      "समेट कर ले जाओ..,",
      "उसके चले जाने के बाद..,",
      "टूटा हो दिल तो दुःख होता है,",
      "हम वो कश्ती हैं जिसका कोई किनारा,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("दर्द-भरी शायरी 🥺",style: TextStyle(fontSize: 25,color: hbar,fontWeight: FontWeight.w800),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      backgroundColor: hSBack,
      body: ListView.builder(
        itemCount: category2.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: hBodr,
                border: Border.all(width: 4,color: Colors.pinkAccent),
                boxShadow: const [BoxShadow(color: Color(0xFFFF02EA),spreadRadius: 4,blurRadius: 4)]),
            child: ListTile(
              onTap: () {
                Get.to( dard(initialPage: index));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('😔😟💔😥😫😭',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: hFont,))),
              subtitle:  Center(
                child: Text(category2[index],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: hFont,)),
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
