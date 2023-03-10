import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnckBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Snack bar title","Snack bar Message",
                        snackPosition: SnackPosition.BOTTOM,
                        borderRadius:20,
                        backgroundColor: Colors.blue,
                        animationDuration: Duration(milliseconds: 500),
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.easeOutBack,
                        duration: Duration(milliseconds: 1500),
                        mainButton: TextButton(onPressed: (){}, child: Text("Helloooo",style: TextStyle(color: Colors.pink),)),
                        onTap: (val){
                          print("Hello");
                        }
                    );
                  },
                  child: Text("GetX Snack bar"))),
        ],
      ),
    );
  }
}
