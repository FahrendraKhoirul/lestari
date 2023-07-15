import 'package:get/get.dart';

import 'package:lestari/app/modules/landing/controllers/splash_controller.dart';

import '../controllers/landing_controller.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<LandingController>(
      () => LandingController(),
    );
  }
}
