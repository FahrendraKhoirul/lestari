import 'package:get/get.dart';

import '../controllers/ntb_hijau_controller.dart';

class NtbHijauBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NtbHijauController>(
      () => NtbHijauController(),
    );
  }
}
