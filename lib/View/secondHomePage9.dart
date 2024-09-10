
// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/Main%20Shayari/Breakup.dart';
import '../Model/color.dart';
import 'Main Shayari/Ma.dart';


class secoondHomePage9 extends StatelessWidget with color{
  secoondHomePage9({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "मोहब्बत कितनी भी सच्ची करलो,",
      "मुबारक हो यार तुम्हारी लाइफ में जो सबसे बड़ा दुख था मैं,",
      "जल्दी टूटने वाले नहीं थे हम,",
      "मेरे गीत सुने दुनिया वालों ने,",
      "मेरी वफा मुकम्मल नही हुई,",
      "तुम्हारी याद में जैसे हम रोते हैं,",
      "ये मोहब्बत के हादसे अक्सर दिलों को,",
      "सोचा नहीं था जिंदगी में ऐसे भी फसाने होंगे,",
      "मनाया नहीं गया मुझसे इस बार,",
      "दिल में आग है पर आंखों से नहीं आता,",
      "जो नजर से गुजर जाया करते हैं वो,",
      "है न मुझे गलत फहमियां??",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("ब्रेकअप शायरी 💔"
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
                Get.to(BreakUp(initialPage: index,));
              },
              leading: Image.asset('image/${13}.png'),
              title: Center(child: Text('💔😢😭🥀🤕',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
