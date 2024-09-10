import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Ma extends StatelessWidget with color {
  Ma({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "मेरी तकदीर में कभी कोई गम नहीं होता,\n\t\t\t\tअगर तक़दीर लिखने का हक मेरी माँ को होता!",
    "मेरी माँ आज भी अनपढ़ ही है,\n\t\t\t\tरोटी एक माँगता हूँ लाकर दो देती है!",
    "कौन सी है वो चीज़ जो यहाँ नहीं मिलती,\n\t\t\t\tसब कुछ मिल जाता है पर माँ नहीं मिलती!",
    "हर गली, हर शहर, हर देश-विदेश देखा,\n\t\t\t\tलेकिन माँ तेरे जैसा प्यार कहीं नहीं देखा!",
    "लबों पे उसके कभी बदुआ नहीं होती,\n\t\t\t\tएक माँ ही है जो हमसे कभी खफा नहीं होती!",
    "पहाड़ो जैसे सदमे झेलती है उम्र भर लेकिन,\n\t\t\t\tइक औलाद की तकलीफ से माँ टूट जाती है!",
    "माँ हमें अच्छी जिंदगी जीने की राह बताती है,\n\t\t\t\tऔर माँ के बिना जीवन नीरस हो जाता है,\nमाँ के बिना इस सारी दुनिया की कल्पना करना भी मुश्किल है!",
    "ममता के सागर से भरी है वो माँ की मूरत,\n\t\t\t\tउसके साथ हर चीज़ होती है खुबसूरत!",
    "पिता हमेशा निम के पेड़ जैसा होता है,\n\t\t\t\tजिसके पत्ते भले ही कडवे हो पर वह छाया हमेशा ठंडी देता है!",
    "मां तो मां होती है, जो जानती है,\n\t\t\t\tआंखे सोने से लाल हुई है, या रोने से..!!!",
    "मेरी बस इतनी सी कहानी है,\n\t\t\t\tबाप मेरा राजा है और मां मेरी रानी है..!!!",
    "एक अच्छी मां तो हर बेटे के पास होती है,\n\t\t\t\tपर एक अच्छा बेटा हर मां के पास नही होता..!!!"
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
          "दोस्ती शायरी 🤝",
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
