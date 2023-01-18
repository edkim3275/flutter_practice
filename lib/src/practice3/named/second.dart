import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/normal/second.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Named Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로가기')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/third');
              },
              child: Text('세번째 페이지로 이동'))
        ]),
      ),
    );
  }
}
