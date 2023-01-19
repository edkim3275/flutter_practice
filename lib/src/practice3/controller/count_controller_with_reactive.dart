import 'package:get/get.dart';

// 반응형 상태관리는 GetxController가 필요없다.
class CountControllerWithReactive {
  // 패키지를 import하고 obs(observerb)를 사용하면 이제부터 이 상태를 반응형으로 관리하게된다.
  RxInt count = 0.obs;
  void increase() {
    count++;
    // update해주지 않아도된다.
  }

  void putNumber(int value) {
    count(value);
  }
}
