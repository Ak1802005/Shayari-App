
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Model/color.dart';
import 'Main Shayari/dosti.dart';


class secoondHomePage3 extends StatelessWidget with color{
  secoondHomePage3({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> category1 = [
      "दोस्तों का साथ नहीं छोड़ते है,",
      "दीपक तो आंधी में भी जला करते हैं,",
      "दोस्ती का यूं फर्ज हम अदा करते हैं,",
      "पुराना दोस्त जीवन का चांद होता है,",
      "पक्के यार है हम,",
      "लोग हमारी दोस्ती की कसमें खाते हैं,",
      "मुकाम हर मोड़ पर नहीं होता,",
      "मोहब्बतों में दिखावे की दोस्ती न मिला,",
      "दोस्ती जब किसी से की जाए,",
      "अगर तुम्हारी अना ही का है सवाल तो फिर,",
      "मेरे हम-नफ़स मेरे हम-नवा मुझे दोस्त बन के दग़ा न दे,",
      "भूल शायद बहुत बड़ी कर ल,",
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: hAppBack,
        centerTitle: true,
        title: Text("दोस्ती शायरी 🤝",style: TextStyle(fontSize: 25,color: hbar,fontWeight: FontWeight.w800),),
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
                Get.to(Dosti(initialPage: index,));
              },
              leading: Image.asset('image/${12}.png'),
              title: Center(child: Text('🫂❤♾️🍻🤜🖇️',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:hFont,))),
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
