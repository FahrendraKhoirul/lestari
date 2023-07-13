import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/homepage_view.dart';
import '../modules/try/bindings/try_binding.dart';
import '../modules/try/views/datasampah_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePageView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TRY,
      page: () => const DataSampahView(),
      binding: TryBinding(),
    ),
  ];
}
