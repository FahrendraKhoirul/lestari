import 'package:get/get.dart';

import '../controllers/detail_lokasi_controller.dart';

class DetailLokasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailLokasiController>(
      () => DetailLokasiController(),
    );
  }
}
