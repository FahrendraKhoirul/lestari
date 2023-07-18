import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/location_model.dart';
import 'package:http/http.dart' as http;

class LocationController extends GetxController {
  final locations = <Location>[].obs;
  final isLoading = false.obs;
  final listImage = [
    "assets/icons/icon_usaha persampahan.png",
    "assets/icons/icon_komunitas peduli sampah.png",
    "assets/icons/icon_pengelola sampah.png",
    "assets/icons/icon_penampungan sampah.png",
    "assets/icons/icon_timbunan sampah.png",
  ];

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/location'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        locations.value = responseBody
            .map((json) => Location.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching locations: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
