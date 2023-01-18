import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/normal/second.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Named Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                // Get.offNamed('/second');
                Navigator.of(context).pushNamed('/second');
              },
              child: Text('다음페이지로 이동'))
        ]),
      ),
    );
  }
}
