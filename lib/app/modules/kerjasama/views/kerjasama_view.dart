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
                  searchField(screenWidth, "Cari kerjasama...", (value) {}),
                  Obx(() => ListView.builder(
                        itemCount: controller.kerjasama.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          String number = controller.kerjasama[index].number ?? '';
                          String date =
                              controller.kerjasama[index].date ?? '';
                          String type =
                              controller.kerjasama[index].type ?? '';
                          String desc =
                              controller.kerjasama[index].description ?? '';

                          return controller.isLoading.value == true
                              ? const Center(
                                  child: CircularProgressIndicator(
                                      color: darkGreen))
                              : cardKerjasama(
                                  number,
                                  date,
                                  "Kerjasama $type",
                                  desc);
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
