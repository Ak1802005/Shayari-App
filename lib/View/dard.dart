import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/shyriEdit.dart';

import '../Model/color.dart';

// ignore: camel_case_types
class dard extends StatelessWidget with color {
  dard({super.key,required this.initialPage});

  final int initialPage;

  @override
  Widget build(BuildContext context) {
    List<String> los1 = [
      'पलकों में आँसू और दिल में दर्द सोया है,\n\t\t\tहँसने वालो को क्या पता रोने वाला किस कदर रोया है,\nये तो बस वोही जान सकता है, मेरी तन्हाई का आलम,\n\t\t\tजिसने ज़िंदगी में, किसी को पाने से पहले खोया हो…!',
      'मैंने जिन्दगी से पूछा..\n\t\t\tसबको इतना दर्द क्यों देती हो?\nजिन्दगी ने हंसकर जवाब दिया..\n\t\t\tमैं तो सबको ख़ुशी ही देती हु,\nपर एक की ख़ुशी दुसरे का दर्द बन जाती है!!',
      'काश तू पूछे मुझसे मेरा हाल-ए-दिल,\n\t\t\tमैं तुझे भी रुला दू तेरे सितम सुना सुना कर…!',
      'मर जाता हु जब ये सोचता हु,\n\t\t\tमैं तेरे बगैर ही जी लिया…!',
      'नखरे तो हम मरने के बाद भी करेंगे,\n\t\t\tतुम जमीन पर चलोगे और हम कंधो पर…!',
      'तुम्हारे शहर में कुछ लोग मुझे जानते है,\n\t\t\tआज कल उनसे भी मिलने के बहाने ढूंढता हूं,\nमुझे मालूम है तुम उस जगह से जा चुके हो,\n\t\t\tमगर मैं फिर भी वही पल पुराने ढूंढता हूं…!',
      'एक तुम ही तो थे जो मुझे समनझते थे,\n\t\t\tये क्या हुआ के तुम भी समंझदार हो गए…!',
      'मैं उससे कहता रहा अपने दिल की बातें बेसबब,\n\t\t\tऔर वो मेरे जज़्बात किसी और के साथ बांटने लगा…!',
      'समेट कर ले जाओ..\n\t\t\tअपने झूठे वादों के अधूरे क़िस्से..\nअगली मोहब्बत में तुम्हें फिर..\n\t\t\tइनकी ज़रूरत पड़ेगी।',
      'उसके चले जाने के बाद..\n\t\t\tहम महोबत नहीं करते किसी से..\nछोटी सी जिन्दगी है..\n\t\t\tकिस किस को अजमाते रहेंगे!',
      'टूटा हो दिल तो दुःख होता है,\n\t\t\tकरके मोहब्बत किसी से ये दिल रोता है,\nदर्द का एहसास तो तब होता है,\n\t\t\tजब किसी से मोहब्बत हो और उसके दिल में कोई और होता है।',
      'हम वो कश्ती हैं जिसका कोई किनारा ना हुआ,\n\t\t\tहम सबके हुए मगर कोई हमारा ना हुआ।'
    ];
    final controller = PageController(initialPage: initialPage,keepPage: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: loAppBack,
        centerTitle: true,
        title: Text(
          "दर्द-भरी शायरी 🥺",
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
          top: 0,
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
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: loBodr,
                              ),
                              child: ListTile(
                                title: Center(
                                    child: Text(
                                      los1[index],
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
        margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: custo,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.copy_all_rounded),
            IconButton(
                onPressed: () {
                  controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.keyboard_double_arrow_left)),
            IconButton(
                onPressed: () {
                  Get.to(shyriEdit(editShayari: los1[initialPage].toString(), index: initialPage));
                },
                icon: const Icon(Icons.edit_off)),
            IconButton(
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.keyboard_double_arrow_right)),
            const Icon(Icons.download_for_offline_outlined),
          ],
        ),
      ),
    );
  }
}
