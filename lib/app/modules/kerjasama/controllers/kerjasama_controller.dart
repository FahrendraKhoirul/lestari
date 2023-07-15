import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/kerjasama/kerjasama_model.dart';
import 'package:http/http.dart' as http;

class KerjasamaController extends GetxController {
  final kerjasama = <Kerjasama>[].obs;
  final kerjasamaBySearch = <Kerjasama>[].obs;
  final searchValue = ''.obs;
  final isLoading = false.obs;

  final count = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchData();
    kerjasamaBySearch.value.addAll(kerjasama);
  }



  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/cooperation'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        kerjasama.value = responseBody
            .map((json) => Kerjasama.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching kerjasama: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void searchData() {
    kerjasamaBySearch.value = kerjasama.where((value) {
      final keywordNumber = value.number?.toLowerCase();
      final keywordType = value.type?.toLowerCase();
      final listFromNumber =
          keywordNumber?.contains(searchValue.value.toLowerCase()) ?? false;
      final listFromType =
          keywordType?.contains(searchValue.value.toLowerCase()) ?? false;
      return listFromNumber || listFromType;
    }).toList();
  }
}
