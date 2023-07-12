import 'package:get/get.dart';
import 'package:lestari/app/modules/home/views/agenda_view.dart';
import 'package:lestari/app/modules/home/views/homepage_view.dart';
import 'package:lestari/app/modules/home/views/location_view.dart';

class HomeController extends GetxController {
  final activeViewIndex = 0.obs;

  final listView =
      [const HomePageView(), const LocationView(), const AgendaView()].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void increment() => count.value++;
}
