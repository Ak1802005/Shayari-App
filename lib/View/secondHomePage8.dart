
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/attitude.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage8 extends StatelessWidget with color{
  secoondHomePage8({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "बादशाह हो या मालिक सलामी हम नही करते,",
      "मेरे पास जुनून है तभी तो,",
      "फर्क बहुत है तेरी और मेरी तालीम में,",
      "सीधा सादा समझ कर तरस मत खा,",
      "अपने चेहरे की बनावट से भी डर गया,",
      "मुझसे नफरत करने वाले लोग मेरी कामयाबी से जलते हैं,",
      "जाना है तो जाओ आखिर रोका किसने है,",
      "जो प्यार से रहे उसे प्यार देते हैं,",
      "शिकारी तो हम आपसे भी बहुत बड़े हैं,",
      "मैं वो हूं जो आप सोच भी नहीं सकते,",
      "झूठा ही मुस्कुारा लेता हूं मैं,",
      "तू चाहे उड़ ले आसमान तक,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("मनोभाव शायरी 👑"
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
                Get.to(Attitude(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('𓆩🖤𓆪🏴‍☠️☠🦅',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
