import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shayari/View/shyriEdit.dart';

class Controller extends GetxController {
  Rx<double> fontSize = 20.0.obs;
  Rx<Color> backGround = const Color(0xFFF895A0).obs;
  Rx<Color> fontColor = Colors.black.obs;
  Rx<String> emojies = ''.obs;
  Rx<String> fontFamily = 'ff1'.obs;

  @override
  void onInit() {
    super.onInit();
    emojies.value = emoji[Random().nextInt(emoji.length)];
  }

}

