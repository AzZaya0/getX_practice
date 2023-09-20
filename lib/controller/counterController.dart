import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  void increase() {
    count.value++;
    print(count.value);
  }

  void decrease() {
    count.value--;
    print(count.value);
  }
}
