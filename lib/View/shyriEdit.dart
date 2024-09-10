// ignore_for_file: must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import '../Control/Controller.dart';
import '../Model/color.dart';


  List<String> emoji = [
    '😘❤️💋😘❤️🌹',
    '❤️✨🥰🦋❤️🌹',
    '♥❤️♥❤️♥❣️️‍️‍',
    '💏❤️‍🔥💋❤️‍🩹💍🙏',
    '❤️‍🔥🥵💔🔛❤️‍🩹',
    '🧸❤️✨⌛❤️‍🩹♾️',
    '❤️🔒🍀😊🌈❤️',
    '📝💌❤️‍🔥🕊️🥀❤️',
    '💓😘💋💕😉😘',
    '😜😘👅😗+❤️=😘',
    '🤗😘💐😘🥰😍',
    '💋😊😲👩‍❤️‍💋‍👨😘🕊️',
    '🥺🥀❤️‍🩹😭😔💔',
    '😡😭💔🚫❤️😮‍💨',
    '👩‍👧‍👦❤️🌍😇👸🏻🤱',
    '💌🧚‍♀️💗🌨🥡🍥',
    '👨🏻‍💼💎🫧💗✨👨‍👧‍👦',
    '💝🌎🌹🕊️𓆩♡𓆪',
    '🎯💖🧿🦋🕊🏆',
    '💔🥀😭🖤🤕💔🪽',
    '🥀💔.....🥺🩹',
    '❤️‍🩹🫠🩹❤️‍🔥❌',
    '🪖🫡🎖️⚔️🥷🏿👮',
    '⌖👩🏻‍✈️🔰⚚★★★',
    '',
  ];

class shyriEdit extends StatelessWidget with color {
  shyriEdit({super.key, required this.editShayari, required this.index});

  final String editShayari;
  final index;
  final Controller controller = Get.put(Controller());

  final WidgetsToImageController imgCtrl = WidgetsToImageController();

  @override
  Widget build(BuildContext context) {
    List<String> editBtn = [
      'Background',
      'Text Color',
      'Share',
      'Font',
      'Emoji',
      'Text Size'
    ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            WidgetsToImage(
              controller: imgCtrl,
              child: DecoratedBox(
                decoration: const BoxDecoration(),
                child: Obx(
                  () => Card(
                    shadowColor: Colors.black,
                    margin: const EdgeInsetsDirectional.fromSTEB(20, 60, 20, 0),
                    color: controller.backGround.value,
                    child: Center(
                        child: Obx(
                      () => Text(
                        '${controller.emojies.value}\n$editShayari\n${controller.emojies.value}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: controller.fontFamily.value,
                            fontSize: controller.fontSize.value,
                            fontWeight: FontWeight.w500,
                            color: controller.fontColor.value),
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
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
          DecoratedBox(
            decoration: const BoxDecoration(color: Color(0xFFF6AA8E)),
            child: GridView.builder(
              padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => _openBotomSheet(index, editShayari),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.black54),
                    child: Center(
                      child: Text(
                        editBtn[index],
                        style: const TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  final List<LinearGradient> Gradiant = [
    const LinearGradient(colors: [Colors.red, Colors.green, Colors.purple]),
    const LinearGradient(colors: [Colors.purple, Colors.indigo, Colors.orange]),
    const LinearGradient(colors: [Colors.orange, Colors.yellow, Colors.lime]),
    const LinearGradient(colors: [Colors.pink, Colors.redAccent, Colors.red]),
    const LinearGradient(
        colors: [Colors.lime, Colors.lightBlueAccent, Colors.lightGreen]),
    const LinearGradient(
        colors: [Colors.white60, Colors.white70, Colors.black45]),
    const LinearGradient(
        colors: [Colors.grey, Colors.blueGrey, Colors.blueAccent]),
    const LinearGradient(
        colors: [Colors.cyan, Colors.teal, Colors.purpleAccent]),
    const LinearGradient(colors: [Colors.black45, Colors.green, Colors.purple]),
  ];

  final List<String> fontFamily = [
    'ff1',
    'ff2',
    'ff3',
    'ff4',
    'ff5',
    'ff6',
    'ff7',
    'ff8',
    'ff9',
    'ff10',
    'ff11',
    'ff12',
    'ff13',
    'ff14',
    'ff15',
    'ff16',
    'ff17',
    'ff18',
    'ff19',
    'ff20',
    'ff21',
    'ff22',
  ];

  Widget _openBotomSheet(int index, String editShayari) {
    Controller controller = Get.put(Controller());
    Widget child = const SizedBox();

    switch (index) {
      case 0:
        child = GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 45, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            Color color = Color.fromARGB(
                Random().nextInt(500),
                Random().nextInt(500),
                Random().nextInt(500),
                Random().nextInt(500));
            return GestureDetector(
              onTap: () {
                controller.backGround.value = color;
                Get.back();
              },
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: 4, vertical: 4),
                color: color,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black54))),
              ),
            );
          },
        );
        break;

      case 1:
        child = GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 45, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            Color font = Color.fromARGB(
                Random().nextInt(500),
                Random().nextInt(500),
                Random().nextInt(500),
                Random().nextInt(500));
            return GestureDetector(
              onTap: () {
                controller.fontColor.value = font;
                Get.back();
              },
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: 4, vertical: 4),
                color: font,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black54))),
              ),
            );
          },
        );
        break;

      case 2:
            ListTile(
              title: const Text('Save'),
              onTap: () async {
                Uint8List? imgByt = await imgCtrl.capture();
                List<int> imageData = imgByt as List<int>;

                _createFolder().then((path) async {
                  File file = File("$path/IMG${DateFormat('__yyyy-MM-dd_HH~mm~SS').format(DateTime.now())}.jpg");
                  file.writeAsBytes(imageData);
                  await file.create();

                  final result = await Share.shareXFiles([XFile(file.path)], text: 'Great picture');

                  if (result.status == ShareResultStatus.success) {
                    print('Thank you for sharing the picture!');
                  }
                });
                Get.back();
              },
            );
    break;

      case 3:
        child = GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 5,
              childAspectRatio: 10),
          itemCount: fontFamily.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.fontFamily.value = fontFamily[index];
                Get.back();
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 4, vertical: 4),
                  child: Text(
                    fontFamily[index],
                  ),
                ),
              ),
            );
          },
        );
        break;

      case 4:
        child = GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 5,
              childAspectRatio: 10),
          itemCount: emoji.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.emojies.value = emoji[index];
                Get.back();
              },
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: 4, vertical: 4),
                child: Center(
                  child: Text(
                    emoji[index],
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
            );
          },
        );
        break;

      case 5:
        child = Obx(
          () => Slider(
            min: 10,
            max: 50,
            value: controller.fontSize.value,
            onChanged: (value) {
              controller.fontSize.value = value;
            },
          ),
        );
        break;
    }

    return SizedBox(
      height: 200,
      child: child,
    );
  }

  Future<String> _createFolder() async {
    const folderName = "Shayari's Image";
    final path = Directory("storage/emulated/0/Documents/$folderName");
    if (!(await path.exists())) {
      path.create();
    }
    return path.path;
  }
}
