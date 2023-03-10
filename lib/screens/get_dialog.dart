import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Dialog Box"),
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
            child: const Text("Show Dialog"),
            onPressed: () {
              Get.defaultDialog(
                title: "Get Dialog",
                backgroundColor: Colors.pink,
                middleText: "Password is wrong",
                content: Column(
                  children: [CircularProgressIndicator()],
                ),
               actions: [
                 ElevatedButton(onPressed: (){
                   Navigator.pop(context);
                 }, child: Text("Cancel")),
                 ElevatedButton(onPressed: (){
                   Get.changeTheme(ThemeData.dark());
                   print("Confirm");

                 }, child: Text("Confirm"))
               ],
                  barrierDismissible: false
              );
            },
          )),
          Text("${Get.parameters.values.first} dcdcdcdcdc")
        ],
      ),
    );
  }
}
