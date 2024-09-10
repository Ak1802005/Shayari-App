import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Dosti extends StatelessWidget with color {
  Dosti({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "दोस्तों का साथ नहीं छोड़ते है,\n\t\t\t\tमुसीबत में हाथ नहीं छोड़ते हैं,\nदोस्ती किया है, तो जिंदगी भर निभाएंगे,\n\t\t\t\tदूर रहने पर भी मुंह नहीं मोड़ते है।",
    "दीपक तो आंधी में भी जला करते हैं,\n\t\t\t\tकांटों में ही गुलाब खिला करते हैं,\nबहुत खुशनसीब होती है वो शाम,\n\t\t\t\tजिसमें तुम्हारे जैसे यार मिला करते हैं।",
    "दोस्ती का यूं फर्ज हम अदा करते हैं,\n\t\t\t\tदोस्तों के नाम पर हम जान फिदा करते हैं,\nछोटा सा जख्म भी तुम्हें भी न आने पाए,\n\t\t\t\tभगवान से हम बस हर रोज यही दुआ करते है।",
    "पुराना दोस्त जीवन का चांद होता है,\n\t\t\t\tदिल उसका खुला आसमान होता है,\nदूसरों के लिए वो महान होता है,\n\t\t\t\tइसलिए तो वो हमारी जान होता है।",
    "पक्के यार है हम,\n\t\t\t\tनहीं है किसी से कम,\nहम दोनों को अलग कर दें\n\t\t\t\tइतना नहीं है किसी में दम।",
    "लोग हमारी दोस्ती की कसमें खाते हैं,\n\t\t\t\tतभी तो वे दोस्ती जिंदगी भर निभाते हैं।",
    "मुकाम हर मोड़ पर नहीं होता,\n\t\t\t\tरिश्तों का दिल के कोई नाम नहीं होता,\nचिराग लेकर ढूंढा है मैंने आपको,\n\t\t\t\tदोस्त मिलना आप जैसा आसान नहीं होता।",
    "मोहब्बतों में दिखावे की दोस्ती न मिला\n\t\t\t\tअगर गले नहीं मिलता तो हाथ भी न मिला",
    "दोस्ती जब किसी से की जाए\n\t\t\t\tदुश्मनों की भी राय ली जाए",
    "अगर तुम्हारी अना ही का है सवाल तो फिर\n\t\t\t\tचलो मैं हाथ बढ़ाता हूँ दोस्ती के लिए ",
    "मेरे हम-नफ़स मेरे हम-नवा मुझे दोस्त बन के दग़ा न दे\n\t\t\t\tमैं हूँ दर्द-ए-इश्क़ से जाँ-ब-लब मुझे ज़िंदगी की दुआ न दे ",
    "भूल शायद बहुत बड़ी कर ली\n\t\t\t\tदिल ने दुनिया से दोस्ती कर ली "
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
