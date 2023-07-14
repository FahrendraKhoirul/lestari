import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/agenda_model.dart';
import 'package:http/http.dart' as http;

class AgendaController extends GetxController {
  final eventTypeSelected = 'Offline'.obs;
  final eventTypeSelectedIndex = 0.obs;
  final searchText = ''.obs;
  final agendas = <Agenda>[].obs;
  final agendasBySearch = <Agenda>[].obs;
  final isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchData();
    agendasBySearch.value.addAll(agendas);
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
      final response = await http.get(Uri.parse(
          'https://lestari.ntbprov.go.id/api/event?type=$eventTypeSelected'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        agendas.value = responseBody
            .map((json) => Agenda.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching locations: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void changeEventType(String type) {
    eventTypeSelected.value = type;
    fetchData();
  }

  void changeEventTypeIndex(int index) {
    eventTypeSelectedIndex.value = index;
  }

  void sortBySearch() {
    agendasBySearch.value = agendas.where((agenda) {
      final lower = agenda.name?.toLowerCase();
      return lower?.contains(searchText.value.toLowerCase()) ?? false;
    }).toList();
  }
}
