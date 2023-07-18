import 'package:get/get.dart';

import '../controllers/detail_aduan_controller.dart';

class DetailAduanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailAduanController>(
      () => DetailAduanController(),
    );
  }
}
