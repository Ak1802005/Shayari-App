

import 'package:flutter/material.dart';

import '../Model/color.dart';

// ignore: camel_case_types
class motivation extends StatelessWidget with color{
   motivation({super.key,required  this.intialPage});

   int intialPage;
  @override
  Widget build(BuildContext context) {

    List<String> mo1 = [
      'मंजिलें क्या है, रास्ता क्या है?, हौसला हो तो फासला क्या है,\n\t\t\tहौसला हो तो हमारी मंजिल दूर नहीं रह जाती है।',
      'वक्त से लड़कर जो नसीब बदल दे, इंसान वही जो अपनी तक़दीर बदल दे,\n\t\t\tइंसान इतनी मेहनत करे कि तकदीर बदल जाए, ये सफलता की गारंटी है।',
      'हार हो जाती है जब मान लिया जाता है,\n\t\t\tजीत तब होती है जब ठान लिया जाता है!,\nदिल से हार गए या हार को मान लेने भर से,\n\t\t\tसच की हार हो जाती है।',
      'काम करो ऐसा कि एक पहचान बन जाए,\n\t\t\tहर कदम ऐसा चलो कि निशान बन जाए,\nयहां जिंदगी तो हर कोई काट लेता है,\n\t\t\tजिंदगी जियो इस कदर कि मिसाल बन जाए।',
      'ये जिंदगी हसीं है इससे प्यार करो,\n\t\t\tअभी है रात तो सुबह का इंतजार करो,\nवो पल भी आएगा जिसकी ख्वाहिश है आपको,\n\t\t\tरब पर रखो भरोसा वक्त पर एतबार करो।',
      'लक्ष्य को पाने के लिए यदि हम तन, मन और धन लगा देते हैं,\n\t\t\tसच कहता हूं दोस्तों, कुंडली के सितारे भी अपनी जगह बदल देते हैं।',
      'हवाओं के भरोसे मत उड़,\n\t\t\tचट्टाने तूफानों का भी रुख मोड़ देती हैं,\nअपने पंखों पर भरोसा रख,\n\t\t\tहवाओं के भरोसे तो पतंगे उड़ा करती हैं।',
      'खेल ताश का हो या जिंदगी का,\n\t\t\tअपना इक्का तभी दिखाओ जब सामने बादशाह हो!',
      'मंजिल उन्ही को मिलती है, जिनक सपनो में जान होती है,\n\t\t\tपंखों से कुछ नहीं होता, हौसलों से उड़ान होती है!',
      'बुरा वक्त एक ऐसी तिजोरी है,\n\t\t\tजहां से सफलता के हथियार मिलते है!',
      'हाथ थामे रखना दुनिया में, भीड़ भारी है,\n\t\t\tखों ना जाऊ कही में, ये जिम्मेदारी तुम्हारी है!',
      'काम से बड़ा कोई धर्म नहीं होता और,\n\t\t\tमहेनत से बड़ा कोई कर्म नहीं होता!'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moAppBack,
        centerTitle: true,
        title:  Text("अभिप्रेरण शायरी 🏅", style: TextStyle(
            fontSize: 35, color: mobar, fontWeight: FontWeight.w800),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      backgroundColor: moSBack,

      body: ListView.builder(
        itemCount: mo1.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: custo),
                height: 50,
                child: const Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(Icons.fullscreen_outlined),
                    Icon(Icons.refresh_outlined),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(20, 60, 20, 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: moBodr,),
                child: ListTile(
                  title: Center(child: Text(mo1[index], style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: moFont),)),
                  mouseCursor: MouseCursor.defer,
                  hoverColor: hover,
                  focusColor: focus,
                ),
              ),
              Container(
                height: 50,
                width: 100,
                margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: custo),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(Icons.copy_all_rounded),
                    Icon(Icons.keyboard_double_arrow_left_outlined),
                    Icon(Icons.edit_off_outlined),
                    Icon(Icons.keyboard_double_arrow_right_outlined),
                    Icon(Icons.download_for_offline_outlined),
                  ],
                ),
              ),
            ],
          );
        },),
    );
  }
}
