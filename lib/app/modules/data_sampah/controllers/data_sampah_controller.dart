import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/data_sampah_model.dart';
import 'package:http/http.dart' as http;

class DataSampahController extends GetxController {
  final data_sampah = DataSampah().obs;
  final isLoading = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }



  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/data-waste'));
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        data_sampah.value = DataSampah.fromJson(responseBody);
      }
    } catch (e) {
      print('Error while fetching data sampah: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
