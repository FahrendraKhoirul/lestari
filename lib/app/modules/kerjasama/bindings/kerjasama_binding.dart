import 'package:get/get.dart';

import '../controllers/kerjasama_controller.dart';

class KerjasamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KerjasamaController>(
      () => KerjasamaController(),
    );
  }
}
