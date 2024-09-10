import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/View/shyriEdit.dart';
import '../../Model/color.dart';


// ignore: must_be_immutable, camel_case_types
class Nation extends StatelessWidget with color {
  Nation({super.key, required this.initialPage});

  final int initialPage;

  List<String> los4 = [
    "आज़ादी की कभी शाम नहीं होने देंगे,\n\t\t\t\tशहीदों की कुर्बानी बदनाम नहीं होने देंगे,\nबची हो जो एक बूंद भी गरम लहू की,\n\t\t\t\tतब तक भारत माता का आँचल नीलाम नहीं होने देंगे।",
    "वीरों के बलिदान को याद रखें,\n\t\t\t\tउनके नक्शेकदम पर हम भी चले,\nभारत माँ की सेवा में सदा रहें,\n\t\t\t\tयही संदेश हम हर दिल में भरें।",
    "मिट्टी की सौंधी खुशबू में वतन की यादें बसती हैं,\n\t\t\t\tदिल में देशभक्ति की आग सदा ही जलती है।",
    "लहराएगा तिरंगा अब सारे आसमान पर,\n\t\t\t\tभारत का ही नाम होगा सबकी जुबान पर।",
    "सरफ़रोशी की तमन्ना अब हमारे दिल में है,\n\t\t\t\tदेखना है ज़ोर कितना बाज़ु-ए-कातिल में है।",
    "ये देश है वीर जवानों का, अलबेलों का, मस्तानों का,\n\t\t\t\tइस देश का यारों क्या कहना, ये देश है दुनिया का गहना।",
    "बड़े शौक से सुन रहा था जमाना,\n\t\t\t\tहम ही सो गए दास्तां कहते-कहते।\nवतन की मोहब्बत में खुद को तपायेंगे,\n\t\t\t\tजहां जरूरत होगी अपनी जान लुटायेंगे।",
    "हर करम अपना करेंगे ऐ वतन तेरे लिए,\n\t\t\t\tदिल दिया है, जां भी देंगे ऐ वतन तेरे लिए।",
    "शहीदों की चिताओं पर लगेंगे हर बरस मेले,\n\t\t\t\tवतन पर मिटने वालों का यही बाकी निशां होगा।",
    "वो शमा जो काम आये अंजुमन के लिए,\n\t\t\t\tवो जज्बा जो कुर्बान हो जाये वतन के लिए।",
    "सीने में है जुनून और होठों पे वंदे मातरम,\n\t\t\t\tवो देश के लिए जिए और देश के लिए मरे।",
    "वीरों के बलिदान को याद रखें,\n\t\t\t\tउनके नक्शेकदम पर हम भी चले,\nभारत माँ की सेवा में सदा रहें,\n\t\t\t\tयही संदेश हम हर दिल में भरें।"
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
          "राष्ट्र शायरी 🌍",
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
