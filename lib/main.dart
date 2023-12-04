import 'package:flutter/material.dart';
import './Beranda.dart';
import 'package:get/get.dart';
import './splash_page.dart';
// import 'package:modul_pembelajaran/Task_Module_01/Pretest_Task_01.dart';
// import 'package:modul_pembelajaran/Task_Module_01/score_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MathPlay Gasing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Beranda(),
    );
  }
}

