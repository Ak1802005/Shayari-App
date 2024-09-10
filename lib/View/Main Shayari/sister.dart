import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Sister extends StatelessWidget with color {
  Sister({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "उसकी छाया में चलकर, उसका ही साया बनना है\n\t\t\t\tखुशियों की खातिर उसकी पीड़ाओं से भी लड़ना है\nकैसे न हो गर्व मुझे, उसका भाई होने पर\n\t\t\t\tजो मुझ जुगनू को रोशन करती, वो बस मेरी बहना है",
    "बहन उन्हीं के हिस्से आती है, जिनके होते हैं कर्म महान\n\t\t\t\tसभ्यताओं का संरक्षण करती, नारी ही करती है कल्याण",
    "मेरे लक को गुड लक बनाती है,\n\t\t\t\tमेरी बहन ही है, जो हमेशा मेरा हौसला बढ़ाती है.",
    "तेरे बिना मैं क्या हूँ केवल शून्य से बढ़कर,\n\t\t\t\tतेरे साहस में मैं हूँ, बहना अनंत से बढ़कर",
    "सुन बहन आँखों की चमक कभी कम मत होने देना\n\t\t\t\tजो होता हो हो जाए, तू हंसती आँखों को मत रोने देना",
    "तेरे बिना मैं क्या हूँ केवल शून्य से बढ़कर,\n\t\t\t\tतेरे साहस में मैं हूँ, बहना अनंत से बढ़कर",
    "जिस भाई की कलाई पर बहन रक्षा सूत्र बंध जाता है\n\t\t\t\tकर्मों से होकर फिर महान, वह भाई वीर बन जाता है",
    "मेरी हंसी-मेरी खुशी की इकलौती वजह तुम ही हो\n\t\t\t\tनारित्व की पहचान हो तुम, मेरे सम्मान की वजह तुम ही हो",
    "नारी के बलिदान को वही सम्मान मिलता है,\n\t\t\t\tजहाँ बहनों ने खुद से पहले भाई की खुशियों को रखा हो।",
    "शर्म नहीं तू गर्व हैं बहना,\n\t\t\t\tमेरी कलम का लिखा तू हर्फ़ है बहना\nतेरी नीयत मेरी पहचान है बहना,\n\t\t\t\tतू मेरी इकलौती शान है बहना",
    "सुन बहन आँखों की चमक कभी कम मत होने देना\n\t\t\t\tजो होता हो हो जाए, तू हंसती आँखों को मत रोने देना",
    "हर रक्षा बंधन मैं अपने मन के भीतर तुम्हारी सुख,\n\t\t\t\tसमृद्धि का संकल्प लेता हूँ।"
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
          "बहन शायरी 👧",
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
