import 'package:get/get.dart';

import 'package:lestari/app/modules/home/controllers/agenda_controller.dart';
import 'package:lestari/app/modules/home/controllers/home_page_controller.dart';
import 'package:lestari/app/modules/home/controllers/location_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgendaController>(
      () => AgendaController(),
    );
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
    Get.lazyPut<LocationController>(
      () => LocationController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
