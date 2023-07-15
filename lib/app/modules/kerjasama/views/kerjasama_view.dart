import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_kerjasama.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/constants.dart';

import '../controllers/kerjasama_controller.dart';

class KerjasamaView extends GetView<KerjasamaController> {
  const KerjasamaView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(boxShadow: cardShadowSmall, color: white),
              child: appBarLight(context, "Kerjasama"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingMedium, vertical: paddingMedium),
              child: Column(
                children: [
                  searchField(screenWidth, "Cari kerjasama...", (value) {
                    controller.searchValue.value = value.toLowerCase();
                    controller.searchData();
                  }),
                  const SizedBox(height: paddingSmall),
                  Obx(() => controller.isLoading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(color: darkGreen))
                      : controller.kerjasamaBySearch.isEmpty
                          ? SizedBox(
                              height: Get.height * 0.5,
                              child: const Center(
                                child: Text('Tidak ada kerjasama'),
                              ),
                            )
                          : ListView.builder(
                              itemCount: controller.kerjasamaBySearch.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                String number = controller
                                        .kerjasamaBySearch[index].number ??
                                    '';
                                String date =
                                    controller.kerjasamaBySearch[index].date ??
                                        '';
                                String type =
                                    controller.kerjasamaBySearch[index].type ??
                                        '';
                                String desc = controller
                                        .kerjasamaBySearch[index].description ??
                                    '';

                                return cardKerjasama(
                                    number, date, "Kerjasama $type", desc, () {
                                  Get.toNamed('/kerjasama/detail-kerjasama',
                                      arguments:
                                          controller.kerjasamaBySearch[index]);
                                });
                              },
                            ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
