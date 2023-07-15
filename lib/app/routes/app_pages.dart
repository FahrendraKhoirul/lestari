import 'package:get/get.dart';
import 'package:lestari/app/modules/landing/views/splash_view.dart';

import '../modules/aduan/bindings/aduan_binding.dart';
import '../modules/aduan/views/aduan_view.dart';
import '../modules/data_sampah/bindings/data_sampah_binding.dart';
import '../modules/data_sampah/views/data_sampah_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/location_view.dart';
import '../modules/kerjasama/bindings/kerjasama_binding.dart';
import '../modules/kerjasama/detail_kerjasama/bindings/detail_kerjasama_binding.dart';
import '../modules/kerjasama/detail_kerjasama/views/detail_kerjasama_view.dart';
import '../modules/kerjasama/views/kerjasama_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/panduan/bindings/panduan_binding.dart';
import '../modules/panduan/detail_panduan/bindings/detail_panduan_binding.dart';
import '../modules/panduan/detail_panduan/views/detail_panduan_view.dart';
import '../modules/panduan/views/panduan_view.dart';
import '../modules/sarpras/bindings/sarpras_binding.dart';
import '../modules/sarpras/views/sarpras_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.LOCATION,
          page: () => const LocationView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SARPRAS,
      page: () => const SarprasView(),
      binding: SarprasBinding(),
    ),
    GetPage(
      name: _Paths.DATA_SAMPAH,
      page: () => const DataSampahView(),
      binding: DataSampahBinding(),
    ),
    GetPage(
      name: _Paths.KERJASAMA,
      page: () => const KerjasamaView(),
      binding: KerjasamaBinding(),
      children: [
        GetPage(
          name: _Paths.DETAIL_KERJASAMA,
          page: () => const DetailKerjasamaView(),
          binding: DetailKerjasamaBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PANDUAN,
      page: () => const PanduanView(),
      binding: PanduanBinding(),
      children: [
        GetPage(
          name: _Paths.DETAIL_PANDUAN,
          page: () => const DetailPanduanView(),
          binding: DetailPanduanBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ADUAN,
      page: () => const AduanView(),
      binding: AduanBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: LandingBinding(),
    ),
  ];
}
