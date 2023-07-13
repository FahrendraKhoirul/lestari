import 'package:get/get.dart';

import '../controllers/try_controller.dart';

class TryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TryController>(
      () => TryController(),
    );
  }
}
