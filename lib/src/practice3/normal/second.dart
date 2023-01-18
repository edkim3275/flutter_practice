import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Normal Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Get.back();
                // Navigator.of(context).pop();
              },
              child: Text('뒤로가기')),
          ElevatedButton(
              onPressed: () {
                Get.offAll(Home());
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => Home()),
                //     (route) => false);
              },
              child: Text('홈으로 돌아가기'))
        ]),
      ),
    );
  }
}
