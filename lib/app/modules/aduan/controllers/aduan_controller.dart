import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/aduan/aduan_model.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class AduanController extends GetxController {
  final aduan = <Aduan>[].obs;
  final aduanBySearch = <Aduan>[].obs;
  final searchValue = ''.obs;
  final isLoading = false.obs;
  final monthNames = [
    '',
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  final count = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchData();
    aduanBySearch.value.addAll(aduan);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/complaints'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        aduan.value = responseBody
            .map((json) => Aduan.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching aduan: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void searchData() {
    aduanBySearch.clear();
    aduanBySearch.value = aduan.where((value) {
      final date = value.createdAt ?? '';
      DateFormat format = new DateFormat("yyyy-MM-dd HH:mm:ss");
      var formattedDate = format.parse(date);

      final keywordDate =
          "${formattedDate.day} ${monthNames[formattedDate.month]}"
              .toLowerCase();
      print(keywordDate);
      final keywordDesc = value.desc?.toLowerCase();
      final listFromDate =
          keywordDate.contains(searchValue.value.toLowerCase());
      final listFromType =
          keywordDesc?.contains(searchValue.value.toLowerCase()) ?? false;
      return listFromDate || listFromType;
    }).toList();
  }
}
