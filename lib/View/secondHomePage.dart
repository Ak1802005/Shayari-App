

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/love.dart';

import '../Model/color.dart';


// ignore: camel_case_types
class secondHomePage extends StatelessWidget with color{
    secondHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "दिल की किताब में गुलाब उनका था,",
      "अपनी सांसों में महकता पाया है तुझे,",
      "पूछते थे ना कितना प्यार है हमें तुम से,",
      "चांद रोज़ छत पर आकर इतराता बहुत था,",
      "अजीब सी बेताबी है तेरे बिना,",
      "तु मिल गई है तो मुझ पे नाराज है खुदा,",
      "खुदा करे, सलामत रहें दोनों हमेशा,",
      "तम्मना हो मिलने की तो,",
      "ना चांद की चाहत ना सितारों की फरमाइश,",
      "लोग अक्सर पूछते हैं मेरी खुशियों का राज,",
      "शान से हम तेरे दिल में रहेंगे,",
      "तेरे चेहरे पर अश्कों की लकीर बन गयी,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("प्रेम-भरी शायरी 💕",style: TextStyle(fontSize: 25,color: hbar,fontWeight: FontWeight.w800),),
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
                Get.to(love(initialPage: index,));
              },
              leading: Image.asset('image/${12}.png'),
              title: Center(child: Text('💘💞🥰😍💖💗',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: hFont,))),
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
