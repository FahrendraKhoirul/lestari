import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed("/landing");
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
