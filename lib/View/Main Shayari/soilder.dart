import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';
import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Soilder extends StatelessWidget with color {
  Soilder({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "भारतीय सेना सच्चे मायनों में साहस का प्रतीक है\n\t\t\t\tहर दशा-हर दिशा में जिसकी होती केवल जीत है…",
    "जहाँ कहीं खड़ा हो जाता है भारत का वीर सिपाही\n\t\t\t\tदुश्मन के खेमे में तब मचने लगती है तबाही…",
    "भारतीय सेना दिवस प्रतीक है सेना के सम्मान का\n\t\t\t\tभारतीय सेना विषय बड़ा है, भारत राष्ट्र की शान का…",
    "भारतीय सेना को देख, देश का हर चेहरा खिल जाता है\n\t\t\t\tसाहस के रंग में रंगा हुआ, हर कोना खिल जाता है…",
    "भारतीय सेना दिवस का हर लम्हा हो कुछ खास\n\t\t\t\tसेना के साहस का, हर भारतीय करे एहसास…",
    "भारत के युवाओं में हमेशा जोश का संचार करता है\n\t\t\t\tभारतीय सेना दिवस सेना के पराक्रम का प्रचार करता है…",
    "जैसे अग्नि की लपटे मिटाती है अंधकार\n\t\t\t\tवैसे ही भारतीय सेना शत्रुओं का करती है संहार",
      "वीर रस में गाथाएं गाना, जब भी तुम मिलने आना\n\t\t\t\tजय हिंद कहना केवल हंसकर, ऐ वीर! तुम फिर से आना…",
    "भारतीय सेना दिवस के इस अवसर पर आओ संगठित हो जाएं\n\t\t\t\tउत्साह और उमंग के साथ आओ भारतीय सेना दिवस मनाएं…",
      "वो जो सबसे दूर है\n\t\t\t\tपर इस बात का उसको गुरूर है\nदेशप्रेम का को सुरूर है\n\t\t\t\tवो सिपाही रहता बहुत दूर है।",
    "मैदान में जब जान बन आई\n\t\t\t\tतब जाकर उसमे हिम्मत आई\nवही सिपाही है ये जिन्होंने\n\t\t\t\tभारत मां को आजादी दिलाई ।",
    "एक वीर है वो\n\t\t\t\tएक धीर है वो\nकोई भी सिपाही को ना  रोक पाए\n\t\t\t\tचाहे जंजीर हे वो ।"
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
          "सैनिक शायरी 🫡",
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
