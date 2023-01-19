import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_practice/src/practice3/controller/dependency_controller.dart';
import 'package:flutter_practice/src/practice3/dependencies/get_lazyput.dart';
import 'package:flutter_practice/src/practice3/dependencies/get_put.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/route_manager.dart';
import "package:get/get.dart";

class DepenDencyManagerPage extends StatelessWidget {
  const DepenDencyManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("의존성 주입")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                // binding - 페이지로 보내주면서 사용할 컨트롤러를 주입하는 방법
                // 페이지에 들어감과 동시에 컨트롤러를 인스턴스화 해준다.(즉, 메모리에 올린다는 것)
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }));
              },
              child: Text("Get.put")),
          ElevatedButton(
              onPressed: () {
                Get.to(LazyPut(), binding: BindingsBuilder(() {
                  // lazyPut은 put처럼 사용하지않고 builder를 사용하게된다.
                  // lazyPut은 인스턴스를 바로하지않고(메모리에 올리지않고) 사용할 때, 컨트롤러에 접근하려고 할때 메모리에 올리게된다.
                  Get.lazyPut<DependencyController>(
                      () => DependencyController());
                }));
              },
              child: Text("Get.lazyPut")),
          ElevatedButton(
              onPressed: () {
                // 비동기를 처리해주고나서 put을 해주는 것.
                // put과 별다른 차이는 없지만 다른점은 비동기식으로 데이터를 받아오거나, 데이터를 가공처리를 오래동안하고나서 컨트롤러를 인스턴스화해야할 경우에 필요한것이 putAsync다.
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.putAsync<DependencyController>(() async {
                    await Future.delayed(Duration(seconds: 5));
                    return DependencyController();
                  });
                }));
              },
              child: Text("Get.putAsync")),
          ElevatedButton(
              onPressed: () {
                // put, lazyPut, putAsync는 싱글턴방식이다.(즉, 하나만존재한다. 하나만 생성하고 그것을 공유하는 방식)
                // create는 '계속 생성'한다. 그러니 인스턴스가 여러개가 만들어지는 것.(쓸일이 거의 없긴함)
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.create<DependencyController>(
                      () => DependencyController());
                }));
              },
              child: Text("Get.create")),
        ]),
      ),
    );
  }
}
