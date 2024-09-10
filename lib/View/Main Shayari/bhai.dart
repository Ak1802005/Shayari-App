import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Bhai extends StatelessWidget with color {
  Bhai({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "लखन को जैसे राम मिले बलराम को कृष्ण भाई\n\t\t\t\tमुझकों ऐसे ही इस जहाँ में मिले है मेरे प्यारे बड़े भाई",
    "मेरी मुसीबतों को जो अपना समझ,\n\t\t\t\tहर वक्त आगे आकर अपना सर लेता है,\nयार वो कोई और नहीं भाई होता है !",
    "तन्हा वह नही रहता है,\n\t\t\t\tजिसके सिर पर बड़े भाई का हाथ होता है,\nखुश वही रहता है,\n\t\t\t\tजिसका दोस्त जैसा बड़ा भाई होता है।",
    "भाई मेरी हिम्मत है, मेरा वो सहारा है,\n\t\t\t\tवो अपना मुझे मेरी जान से भी प्यारा है।",
    "भाइयों के प्रेम को कम कर दे,\n\t\t\t\tकिसी में इतनी ताकत नहीं,\nभाई हमारे दिल की आवाज है,\n\t\t\t\tहमारा प्रेम होगा कभी भी कम नहीं।",
    "प्यार मोहब्बत का जिस से\n\t\t\t\tएक अलग ही रिश्ता होता है,\nवो भाई बस भाई नहीं होता\n\t\t\t\tएक फ़रिश्ता होता है।",
    "जब भाई-भाई में प्रेम की नीव पक्की होती है,\n\t\t\t\tतो घर की बड़ी ही तरक्की होती है.",
    "संग रहता हैं जो हर पल\n\t\t\t\tदूर एक क्षण कों भी ना होता हैं,\nवों यार सिर्फ दोस्त नही,\n\t\t\t\tपरन्तु एक भाई होता हैं।",
    "घर में जब कोई आपके साथ नहीं होता,\n\t\t\t\tभाई तब भी आपके साथ खड़ा होता हैं … ।।",
    "खूबसूरत एक रिश्ता तेरा मेरा है,\n\t\t\t\tजिस पर खुशियों का पहरा है,\nनज़र न लगे कभी इस रिश्ते को,\n\t\t\t\tक्युकी दुनिया का सबसे प्यारा भाई मेरा है।",
    "पास नहीं तो क्या हुआ,\n\t\t\t\tमेरा भाई मेरे दिल के करीब हैं।",
    "मेरा भाई मेरा यार है,\n\t\t\t\tऔर जिसके पास सच्चा यार है,\nउसके पास सारा संसार है।"
  ];

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: initialPage, keepPage: true);
    int currentIndex = initialPage;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: loAppBack,
        centerTitle: true,
        title: Text(
          "भाई शायरी 👬🏻",
          style: TextStyle(
              fontSize: 25, color: lobar, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      backgroundColor: loSBack,
      body: Stack(children: [
        Positioned(
          right: 0,
          top: -25,
          left: 0,
          child: Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: custo),
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.fullscreen_outlined),
                Icon(Icons.refresh_outlined),
              ],
            ),
          ),
        ),
        PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: los4.length,
          controller: controller,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 450,
                  child: Card(
                      color: locard,
                      margin: const EdgeInsetsDirectional.fromSTEB(20, 60, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: loBodr,
                              ),
                              child: ListTile(
                                title: Center(
                                    child: Text(
                                      los4[index],
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.brown),
                                    )),
                                mouseCursor: MouseCursor.defer,
                                hoverColor: hover,
                                focusColor: focus,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            );
          },
        ),
      ]),
      bottomNavigationBar: Container(
        height: 50,
        margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: custo,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 90,
              child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                      onTap: () {
                        FlutterClipboard.copy(los4[currentIndex]).then((value) {
                          Fluttertoast.showToast(
                              msg: "copied",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        });
                      },
                      child: const Icon(Icons.copy_all_rounded))),
            ),
            IconButton(
                onPressed: () {
                  controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.keyboard_double_arrow_left)),
            IconButton(
                onPressed: () {
                  Get.to(shyriEdit(
                      editShayari: los4[initialPage].toString(),
                      index: initialPage));
                },
                icon: const Icon(Icons.edit_off)),
            IconButton(
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.keyboard_double_arrow_right)),
            IconButton(
                onPressed: () {
                  Share.share(los4[currentIndex]);
                },
                icon: const Icon(Icons.share)),
          ],
        ),
      ),
    );
  }
}
