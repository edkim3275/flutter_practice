import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/normal/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Normal Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                // Get.to(SecondPage());
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SecondPage()));
              },
              child: Text('다음페이지로 이동'))
        ]),
      ),
    );
  }
}
