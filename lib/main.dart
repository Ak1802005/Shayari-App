import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/homeScreen.dart';


void main(){
  runApp( const Shayri(),);
}

class Shayri extends StatelessWidget {
  const Shayri({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
       home: homeScreen(),
       // home: love(),
      // home: dard(),
      // home: motivation(),
      // home: secondHomePage(),
      // home: shyriEdit(),
    );
  }
}
