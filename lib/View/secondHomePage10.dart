
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/nation.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage10 extends StatelessWidget with color{
  secoondHomePage10({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "आज़ादी की कभी शाम नहीं होने देंगे,",
      "वीरों के बलिदान को याद रखें,",
      "मिट्टी की सौंधी खुशबू में वतन की यादें बसती हैं,",
      "लहराएगा तिरंगा अब सारे आसमान पर,",
      "सरफ़रोशी की तमन्ना अब हमारे दिल में है,",
      "ये देश है वीर जवानों का, अलबेलों का, मस्तानों का,",
      "बड़े शौक से सुन रहा था जमाना,",
      "हर करम अपना करेंगे ऐ वतन तेरे लिए,",
      "शहीदों की चिताओं पर लगेंगे हर बरस मेले,",
      "वो शमा जो काम आये अंजुमन के लिए,",
      "सीने में है जुनून और होठों पे वंदे मातरम,",
      "वीरों के बलिदान को याद रखें,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("राष्ट्र शायरी 🌍"
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
                Get.to(Nation(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('🌍🚩🛕🐚🕉️🔱',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
