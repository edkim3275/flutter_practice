import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/dependency_controller.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          // print(Get.find<DependencyController>().hashCode); // hashCode는 고유키
          Get.find<DependencyController>().increase();
        },
        child: Text('increase'),
      ),
    );
  }
}
