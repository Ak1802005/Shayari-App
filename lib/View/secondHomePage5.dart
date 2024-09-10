
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/papa.dart';
import '../Model/color.dart';


class secoondHomePage5 extends StatelessWidget with color{
  secoondHomePage5({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "उनकी मुस्कान से सवर जाति है तबियत मेरी,",
      "सफर सुहाना करते वो मेरी मां है,",
      "बिना उसके ना एक पल भी गंवारा है,",
      "कोई बाप गुस्से में बेटे से कुछ भी बोल दे,",
      "पांव जलने लगे जब जिंदगी की राहों पर,",
      "जाना ही छोड़ देंगे उन रास्तों पर,",
      "पापा कभी डांटे तो सर झुका लेना,",
      "कंधे पर झुलाया, कंधे पर घुमाया,",
      "मां बाप का दिल जीत लो कमियाब हो जाओ,",
      "दिन रात मेहनत करी उसने मेरे लिए,",
      "खुशी का हर लम्हा पास होता है,",
      "कुछ भी सहना नही आता,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("पापा शायरी 🧔🏻"
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
                Get.to(Papa(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('👨👨‍💼👨🏻👨🏻‍🍼👨‍👧‍👶',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
