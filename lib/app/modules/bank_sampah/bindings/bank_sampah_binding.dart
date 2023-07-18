import 'package:get/get.dart';

import '../controllers/bank_sampah_controller.dart';

class BankSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BankSampahController>(
      () => BankSampahController(),
    );
  }
}
