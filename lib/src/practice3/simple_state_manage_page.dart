import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_getx.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_provider.dart';
import 'package:flutter_practice/src/practice3/state/with_getx.dart';
import 'package:flutter_practice/src/practice3/state/with_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());
    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리 페이지'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: WithGetX(),
          ),
          Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
            create: (_) => CountControllerWithProvider(),
            child: WithProvider(),
          )),
        ],
      )),
    );
  }
}
