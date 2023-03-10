import 'package:flutter/material.dart';
import 'package:get_x_bar/screens/get_dialog.dart';
import 'package:get_x_bar/screens/homePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: "/Dialog", page:()=> GetDialog()),
      ],
    );
  }
}
