import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_practice/src/home.dart';
import 'package:get/route_manager.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Get.arguments.name} : ${(Get.arguments as User).age}"),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
              child: Text('뒤로 이동')),
        ],
      )),
    );
  }
}
