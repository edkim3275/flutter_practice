import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Provider', style: TextStyle(fontSize: 30)),

        // Provider 공부후에 확인하기
        // Text('${Provider.of<CountControllerWithProvider>(context).count}'),

        // CountControllerWithProvider를 listening하고있는 Consumer
        Consumer<CountControllerWithProvider>(
            // 함수인자(context, snapshot, child)
            builder: (_, snapshot, child) {
          return Text(
            "${snapshot.count}",
            style: TextStyle(fontSize: 30),
          );
        }),
        TextButton(
            onPressed: () {
              // CountControllerWithProvider 컨트롤러에 변경하라고 명령하는 Provider
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase();
            },
            child: Text('+', style: TextStyle(fontSize: 30))),
      ]),
    );
  }
}
