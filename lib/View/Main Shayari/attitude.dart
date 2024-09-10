import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Attitude extends StatelessWidget with color {
  Attitude({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "बादशाह हो या मालिक सलामी हम नही करते\n\t\t\t\tपैसे हो या कोई राजकुमारी गुलामी हम नही करते",
    "मेरे पास जुनून है तभी तो\n\t\t\t\tतेरा गुरुर मेरे सामने चकनाचूर है",
    "फर्क बहुत है तेरी और मेरी तालीम में\n\t\t\t\tतूने उस्तादों से सीखा है और मैंने हालातो से",
    "सीधा सादा समझ कर तरस मत खा,\n\t\t\t\tमैं वो हूँ जो लोगो को तरसा देता है। ",
    "अपने चेहरे की बनावट से भी डर गया,\n\t\t\t\tवो मुझ से टकराया और बिखर गया। ",
    "मुझसे नफरत करने वाले लोग मेरी कामयाबी से जलते हैं,\n\t\t\t\tऐसे लोगो के आगे, हम सीना तान के चलते हैं। ",
    "जाना है तो जाओ आखिर रोका किसने है,\n\t\t\t\tमैं तो अलग खड़ा हूँ तुमको टोका किसने है। ",
    "जो प्यार से रहे उसे प्यार देते हैं,\n\t\t\t\tज्यादा उछल कूद करे तो सुधार देते हैं। ",
    "शिकारी तो हम आपसे भी बहुत बड़े हैं,\n\t\t\t\tलेकिन हमने कभी कुत्तों का शिकार नहीं किया",
    "मैं वो हूं जो आप सोच भी नहीं सकते,\n\t\t\t\tलेकिन मैं वो बिल्कुल भी नहीं हूं जो आप मुझे सोचते हैं",
    "झूठा ही मुस्कुारा लेता हूं मैं,\n\t\t\t\tक्योंकि जलने वाले बहुत हैं जिंदगी में",
    "तू चाहे उड़ ले आसमान तक,\n\t\t\t\tमेरे सामने रहियो अपनी औकात तक"
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
          "मनोभाव शायरी 👑",
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
