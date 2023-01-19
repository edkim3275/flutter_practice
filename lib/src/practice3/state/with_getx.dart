import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({super.key});

  // CountControllerWithGetx _controllerWithGetx =
  //     Get.put(CountControllerWithGetx());

  Widget _button(String id) {
    return TextButton(
        onPressed: () {
          Get.find<CountControllerWithGetx>().increase(id);
        },
        child: Text('+', style: TextStyle(fontSize: 30)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('GetX', style: TextStyle(fontSize: 30)),
        // CountControllerWithGetx 컨트롤러를 모니터링한다(해당 컨트롤러의 데이터사용가능)
        GetBuilder<CountControllerWithGetx>(
            id: 'first',
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 30),
              );
            }),
        GetBuilder<CountControllerWithGetx>(
            id: 'second',
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 30),
              );
            }),
        _button('first'),
        _button('second'),
      ]),
    );
  }
}
