import 'package:get/get.dart';

import '../controllers/detail_kerjasama_controller.dart';

class DetailKerjasamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailKerjasamaController>(
      () => DetailKerjasamaController(),
    );
  }
}
