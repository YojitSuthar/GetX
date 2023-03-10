import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_bar/screens/get%20_bottomSheet.dart';
import 'package:get_x_bar/screens/get_dialog.dart';
import 'package:get_x_bar/screens/get_snack.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return SnckBar();
                }));
              }, child: const Text("Snack Bar")),
              ElevatedButton(onPressed: (){
                Get.toNamed('Dialog? name = yojit & jimmy= dsds');
              }, child: const Text("Dialog Box")),
              ElevatedButton(onPressed: (){
                Get.to(GetBottom(),transition: Transition.upToDown,arguments:["jimmy","yojit"] );
              }, child: const Text("Bottom sheet")),
            ],
          ),
        ],
      ),
    );
  }
}
