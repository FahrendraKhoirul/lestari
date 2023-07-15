import 'package:get/get.dart';

import '../controllers/data_sampah_controller.dart';

class DataSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataSampahController>(
      () => DataSampahController(),
    );
  }
}
