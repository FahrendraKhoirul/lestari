import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_panduan.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/constants.dart';

import '../controllers/panduan_controller.dart';

class PanduanView extends GetView<PanduanController> {
  const PanduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              customHeader(
                  backButton: true,
                  image: "assets/images/illus_panduan.png",
                  title: "Panduan",
                  subtitle:
                      "Tingkatkan kebersihan dengan cari berbagai panduan yang \nAnda butuhkan!",
                  imageWidth: 120),
              Padding(
                  padding: const EdgeInsets.fromLTRB(
                      paddingMedium, 0, paddingMedium, paddingXXSmall),
                  child: Column(
                    children: [
                      searchField(double.infinity, "cari panduan..", (value) {
                        controller.searchText.value = value.toLowerCase();
                        controller.sortBySearch();
                      }),
                      const SizedBox(
                        height: paddingSmall,
                      ),
                      Obx(() => controller.isLoading.value
                          ? SizedBox(
                              height: Get.height * 0.5,
                              child: const Center(
                                  child: CircularProgressIndicator(
                                color: darkGreen,
                              )))
                          : controller.panduansBySearch.isEmpty
                              ? SizedBox(
                                  height: Get.height * 0.5,
                                  child: const Center(
                                      child: Text("Data tidak ditemukan")))
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: controller.panduansBySearch.length,
                                  itemBuilder: (context, index) {
                                    final titleText = controller
                                            .panduansBySearch[index].title ??
                                        "";
                                    final subtitleText = controller
                                            .panduansBySearch[index].type ??
                                        "";
                                    final descriptionText = controller
                                            .panduansBySearch[index].desc ??
                                        "";
                                    return cardPanduan(titleText, subtitleText,
                                        descriptionText, () {
                                      Get.toNamed("/panduan/detail-panduan/",
                                          arguments: controller
                                              .panduansBySearch[index]);
                                    });
                                  },
                                ))
                    ],
                  ))
            ],
          ),
        ));
  }
}
