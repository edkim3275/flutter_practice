import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/normal/first.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan.shade50,
            title: Text('Routing Pracice using GetX',
                style: TextStyle(color: Colors.black87))),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('Normal Routing'),
                onPressed: () {
                  Get.to(FirstPage());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan.shade50,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)))),
            ElevatedButton(
              child: Text('Named Routing'),
              onPressed: () {
                Get.toNamed('/first');
              },
            ),
            ElevatedButton(
              child: Text('Arguments'),
              onPressed: () {
                Get.toNamed('/next', arguments: User('edkim', '29'));
              },
            ),
            ElevatedButton(
              child: Text('Dynamic URL'),
              onPressed: () {
                Get.toNamed('/user/21566?name=edkim&age=29');
                // Get.to(FirstPage(), arguments: "arguments입니다.");
              },
            ),
          ],
        )));
  }
}

class User {
  String name;
  String age;

  User(this.name, this.age);
}
