import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Bottom Sheet"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    backgroundColor: Colors.pink,
                    barrierColor: Colors.transparent,
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode_outlined),
                            title: Text("Ligth Mode"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("Dark  Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ));
              },
              child: Text("Bottom Sheet"),
            ),
          ),
          Text("${Get.arguments[1]+" "+Get.arguments[0]} dsds")
        ],
      ),
    );
  }
}
