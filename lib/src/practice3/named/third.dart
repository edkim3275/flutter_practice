import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/normal/second.dart';
import 'package:get/get.dart';

class ThirdNamedPage extends StatelessWidget {
  const ThirdNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Named Page'),
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
                // Get.offAllNamed('/');
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              },
              child: Text('홈으로 이동'))
        ]),
      ),
    );
  }
}
