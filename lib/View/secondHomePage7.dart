
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/sister.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage7 extends StatelessWidget with color{
  secoondHomePage7({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "उसकी छाया में चलकर, उसका ही साया बनना है,",
      "बहन उन्हीं के हिस्से आती है,",
      "मेरे लक को गुड लक बनाती है,",
      "तेरे बिना मैं क्या हूँ केवल शून्य से बढ़कर,",
      "सुन बहन आँखों की चमक कभी कम मत होने देना,",
      "तेरे बिना मैं क्या हूँ केवल शून्य से बढ़कर,",
      "जिस भाई की कलाई पर बहन रक्षा सूत्र बंध जाता है,",
      "मेरी हंसी-मेरी खुशी की इकलौती वजह तुम ही हो,",
      "नारी के बलिदान को वही सम्मान मिलता है,",
      "शर्म नहीं तू गर्व हैं बहना,",
      "सुन बहन आँखों की चमक कभी कम मत होने देना,",
      "हर रक्षा बंधन मैं अपने मन के भीतर तुम्हारी सुख,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("बहन शायरी 👧"
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
                Get.to(Sister(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('🩵🧬♾️🧸🎀🫶',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
