
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/bhai.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage6 extends StatelessWidget with color{
  secoondHomePage6({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "लखन को जैसे राम मिले बलराम को कृष्ण भाई,",
      "मेरी मुसीबतों को जो अपना समझ,",
      "तन्हा वह नही रहता है,",
      "भाई मेरी हिम्मत है, मेरा वो सहारा है,",
      "भाइयों के प्रेम को कम कर दे,",
      "प्यार मोहब्बत का जिस से,",
      "जब भाई-भाई में प्रेम की नीव पक्की होती है,",
      "संग रहता हैं जो हर पल,",
      "घर में जब कोई आपके साथ नहीं होता,",
      "खूबसूरत एक रिश्ता तेरा मेरा है,",
      "पास नहीं तो क्या हुआ,",
      "मेरा भाई मेरा यार है,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("भाई शायरी 👬🏻"
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
                Get.to(Bhai(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('🫂💛🤝🧑‍🤝‍🧑💪🏻😎',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
