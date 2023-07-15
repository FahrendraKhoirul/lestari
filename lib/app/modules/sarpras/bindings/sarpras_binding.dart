import 'package:get/get.dart';

import '../controllers/sarpras_controller.dart';

class SarprasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SarprasController>(
      () => SarprasController(),
    );
  }
}
