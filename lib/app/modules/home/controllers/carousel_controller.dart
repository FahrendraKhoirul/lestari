import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/carousel_model.dart';
import 'package:http/http.dart' as http;

class CarouselController extends GetxController {
  final isLoading = false.obs;
  final carousels = <Carousel>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchCarousel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchCarousel() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/carousel'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        carousels.value = responseBody
            .map((json) => Carousel.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching locations: $e');
    } finally {
      isLoading.value = false;
    }
  }

  List<String> convertToListString() {
    List<String> list = [];
    // loop throug carousel and add to list
    carousels.forEach((element) {
      list.add(element.url!);
    });

    return list;
  }
}
