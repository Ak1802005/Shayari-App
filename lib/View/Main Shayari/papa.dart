import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Papa extends StatelessWidget with color {
  Papa({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "उनकी मुस्कान से सवर जाति है तबियत मेरी,\n\t\t\t\tमेरे पापा हसकर मेरी तकलीफ कम कर देते है..!!!",
    "सफर सुहाना करते वो मेरी मां है,\n\t\t\t\tऔर जो हर सफर आसान करते वो मेरे पापा है..!!!",
    "बिना उसके ना एक पल भी गंवारा है\n\t\t\t\tपिता ही साथी है, पिता ही सहारा है।",
    "कोई बाप गुस्से में बेटे से कुछ भी बोल दे,\n\t\t\t\tपर वो अपने बेटे से बहुत प्यार करता है..!!!",
    "पांव जलने लगे जब जिंदगी की राहों पर,\n\t\t\t\tआपको हथेलियां याद आई होंगी अपने पापा की..!!!",
    "जाना ही छोड़ देंगे उन रास्तों पर,\n\t\t\t\tजहां मां बाप की इज्जत खराब हो..!!!",
    "पापा कभी डांटे तो सर झुका लेना,\n\t\t\t\tपर उन्हें कभी आंखे मत दिखाना,\nजिस बाप ने तुम्हे इतना बड़ा किया,\n\t\t\t\tउन्हे जीने का तरीका कभी मत सिखाना..!!!",
    "कंधे पर झुलाया, कंधे पर घुमाया,\n\t\t\t\tपापा की बदौलत ही मेरा जीवन खूबसूरत बन पाया.!!!",
    "मां बाप का दिल जीत लो कमियाब हो जाओ,\n\t\t\t\tवरना सारी दुनियां जीत कर भी हार जाओगे..!!!",
    "दिन रात मेहनत करी उसने मेरे लिए,\n\t\t\t\tकभी फिक्र नहीं किया उसने सूरज के ताप का,\nइस दुनिया में सबका साथ छूट जाए,\n\t\t\t\tपर कभी साथ नही छूटना चाहिए अपने बाप का…!!!",
    "खुशी का हर लम्हा पास होता है,\n\t\t\t\tजब मां बाप का साथ होता है…!!!",
    "कुछ भी सहना नही आता,\n\t\t\t\tकुछ भी कहना नही आया,\nमुझे पापा तुम्हारे बिन,\n\t\t\t\tअभी रहना नही आग…!!!"
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
          "पापा शायरी 🧔🏻",
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
