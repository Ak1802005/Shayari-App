import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class BreakUp extends StatelessWidget with color {
  BreakUp({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "मोहब्बत कितनी भी सच्ची करलो,\n\t\t\t\tलोगों को सच्ची मोहब्बत वाले नहीं,\nअच्छे फेस वाले ही पसंद आते हैं.",
    "मुबारक हो यार तुम्हारी लाइफ में जो सबसे बड़ा दुख था मैं\n\t\t\t\tवह आज हमेशा के लिए खत्म हो गया है.",
    "जल्दी टूटने वाले नहीं थे हम,\n\t\t\t\tबस कोई अपना बना कर तोड़ गया.",
    "मेरे गीत सुने दुनिया वालों ने,\n\t\t\t\tमगर मेरा दर्द कोई ना जान सका,\nएक तेरा सहारा था दिल को पर,\n\t\t\t\tतू भी मुझे ना पहचान सका.",
    "मेरी वफा मुकम्मल नही हुई,\n\t\t\t\tतो क्या हुआ…\nतेरी बेवफाई तो मुकम्मल हो गई.",
    "तुम्हारी याद में जैसे हम रोते हैं,\n\t\t\t\tवैसे तो आजकल के लोग गहरी नींद में सोते हैं.",
    "ये मोहब्बत के हादसे अक्सर दिलों को\n\t\t\t\tतोड़ देते हैं तुम मंजिल की बात करते हो\nलोग राहों में ही साथ छोड़ देते हैं",
    "सोचा नहीं था जिंदगी में ऐसे भी फसाने होंगे,\n\t\t\t\tरोना भी जरूरी होगा और आंसू भी छिपाने होंगे।",
    "मनाया नहीं गया मुझसे इस बार,\n\t\t\t\tउसकी नाराज़गी में आबाद कोई और था.",
    "दिल में आग है पर आंखों से नहीं आता,\n\t\t\t\tकैसे कहूं तुमसे कितना प्यार है,\nपर तुम न समझो तो ये दिल तड़पता रहेगा,\n\t\t\t\tअब तो सिर्फ रास्ते पर अकेले चलता जाएगा।",
    "जो नजर से गुजर जाया करते हैं वो,\n\t\t\t\tसितारे अक्सर टूट जाया करते हैं !",
    "है न मुझे गलत फहमियां??\n\t\t\t\tतुझे जब भी समझा अपना समझा."
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
          "ब्रेकअप शायरी 💔",
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
