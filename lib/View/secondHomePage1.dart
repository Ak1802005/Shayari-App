
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/dard.dart';
import 'package:shayari/View/motivation.dart';


import '../Model/color.dart';


class secoondHomePage1 extends StatelessWidget with color{
   secoondHomePage1({super.key});

  @override
    Widget build(BuildContext context) {

      List<String> category1 = [
        "मंजिलें क्या है, रास्ता क्या है?,",
        "वक्त से लड़कर जो नसीब बदल दे,",
        "हार हो जाती है जब मान लिया जाता है,",
        "काम करो ऐसा कि एक पहचान बन जाए,",
        "ये जिंदगी हसीं है इससे प्यार करो,",
        "लक्ष्य को पाने के लिए यदि हम तन,",
        "हवाओं के भरोसे मत उड़,",
        "खेल ताश का हो या जिंदगी का,",
        "मंजिल उन्ही को मिलती है,",
        "बुरा वक्त एक ऐसी तिजोरी है,",
        "हाथ थामे रखना दुनिया में,",
        "काम से बड़ा कोई धर्म नहीं होता और,",
      ];


      return Scaffold(
        appBar: AppBar(
          backgroundColor: hAppBack,
          centerTitle: true,
          title: Text("अभिप्रेरण शायरी 🏅",style: TextStyle(fontSize: 25,color: hbar,fontWeight: FontWeight.w800),),
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
                  Get.to(motivation(intialPage: index,));
                },
                leading: Image.asset('image/${2}.png'),
                title: Center(child: Text('💪💯🎯🏆💸🧿',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
