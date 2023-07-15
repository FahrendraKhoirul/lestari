import 'package:get/get.dart';

import '../controllers/detail_panduan_controller.dart';

class DetailPanduanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPanduanController>(
      () => DetailPanduanController(),
    );
  }
}
