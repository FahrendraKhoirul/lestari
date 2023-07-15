import 'package:get/get.dart';

import '../modules/data_sampah/bindings/data_sampah_binding.dart';
import '../modules/data_sampah/views/data_sampah_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/location_view.dart';
import '../modules/kerjasama/bindings/kerjasama_binding.dart';
import '../modules/kerjasama/views/kerjasama_view.dart';
import '../modules/panduan/bindings/panduan_binding.dart';
import '../modules/panduan/detail_panduan/bindings/detail_panduan_binding.dart';
import '../modules/panduan/detail_panduan/views/detail_panduan_view.dart';
import '../modules/panduan/views/panduan_view.dart';
import '../modules/sarpras/bindings/sarpras_binding.dart';
import '../modules/sarpras/views/sarpras_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
  ];
}
