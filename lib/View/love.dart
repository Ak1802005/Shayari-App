import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../Model/color.dart';

// ignore: must_be_immutable, camel_case_types
class love extends StatelessWidget with color {
  love({super.key, required this.initialPage});

  final int initialPage;

  List<String> los1 = [
    "\nदिल की किताब में गुलाब उनका था,\n\t\t\t\tरात की नींद में ख्वाब उनका था,\nकितना प्यार करते हो जब हमने पूछा,\n\t\t\t\tमर जायंगे तुम्हारे बिना ये जबाब उनका था......!!!\n",
    "\nअपनी सांसों में महकता पाया है तुझे,\n\t\t\tहर खवाब मे बुलाया है तुझे,\n\t\t\tक्यू न करे याद तुझ को,\n\t\t\tजब खुदा ने हमारे लिए बनाया है तुझे........!!!\n",
    "\nपूछते थे ना कितना प्यार है हमें तुम से,\n\t\t\tलो अब गिन लो… ये बूँदें बारिश की…...!!!\n",
    "\nचांद रोज़ छत पर आकर इतराता बहुत था,\n\t\t\tकल रात मैंने भी उसे तेरी तस्वीर दिखा दी........!!!\n",
    "\nअजीब सी बेताबी है तेरे बिना,\n\t\t\tरह भी लेते है और रहा भी नही जाता…..!!!\n",
    "\nतु मिल गई है तो मुझ पे नाराज है खुदा,\n\t\t\tकहता है की तु अब कुछ माँगता नहीं है.....!!!\n",
    "\nखुदा करे, सलामत रहें दोनों हमेशा,\n\t\t\tएक तुम और दूसरा मुस्कुराना तुम्हारा.....!!!\n",
    "\nतम्मना हो मिलने की तो,\n\t\t\tबंद आँखों में भी नज़र आएंगे,\nमहसूस करने की तो कोशिश कीजिए,\n\t\t\tदूर होते हुए भी पास नजर आएंगे !\n",
    "\nना चांद की चाहत ना सितारों की फरमाइश,\n\t\t\tहर जन्म में तू मिले मेरी बस यही ख्वाहिश !\n",
    "\nलोग अक्सर पूछते हैं मेरी खुशियों का राज,\n\t\t\tइजाजत दो तो आपका नाम बता दूं !\n",
    "\nशान से हम तेरे दिल में रहेंगे,\n\t\t\tतेरी मोहब्बत पे जान निसार करेंगे,\nदेख के जलेंगी हमे दुनिया सारी,\n\t\t\tइस कदर बे-पनाह तुझे प्यार करेंगे......!!!\n",
    "\nतेरे चेहरे पर अश्कों की लकीर बन गयी,\n\t\t\tजो न सोचा था तू वो तक़दीर बन गयी......!!!\n",
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
          "प्रेम-भरी शायरी 💕",
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
          itemCount: los1.length,
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
                                  los1[index],
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
                        FlutterClipboard.copy(los1[currentIndex]).then((value) {
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
                      editShayari: los1[initialPage].toString(),
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
                Share.share(los1[currentIndex]);
              },
                icon: const Icon(Icons.share)),
          ],
        ),
      ),
    );
  }
}
