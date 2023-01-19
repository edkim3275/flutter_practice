import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_getx.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_provider.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_reactive.dart';
import 'package:flutter_practice/src/practice3/state/with_getx.dart';
import 'package:flutter_practice/src/practice3/state/with_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리 페이지'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('GetX', style: TextStyle(fontSize: 30)),
          // 따로 타입을 지정하지않고 컨트롤러에서 obs로 선언한 observerb를 변화감지했을 때 바로 Obx에서 update를 날려준다.
          // 단 Obx를 사용하게되면 반드시 observerb를 선언한 값을 이 안에 넣어줘야한다.
          Obx(() {
            print('UPDATED!!');
            return Text(
              "${Get.find<CountControllerWithReactive>().count.value}",
              style: TextStyle(fontSize: 30),
            );
          }),

          // Obx말고도 GetX라는 방식도 존재한다.
          // GetX(builder: (_) {
          //   return Text(
          //     "${Get.find<CountControllerWithReactive>().count.value}",
          //     style: TextStyle(fontSize: 30),
          //   );
          // }),
          ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text('+', style: TextStyle(fontSize: 30))),
          ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text('5로 변경', style: TextStyle(fontSize: 30)))
        ],
      )),
    );
  }
}
