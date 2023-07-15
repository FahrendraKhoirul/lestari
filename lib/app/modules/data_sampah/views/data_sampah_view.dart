import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_sampah.dart';
import 'package:lestari/constants.dart';

import '../controllers/data_sampah_controller.dart';

class DataSampahView extends GetView<DataSampahController> {
  const DataSampahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: extraDarkGreen,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context, "Data Sampah"),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(roundedLarge),
                        topRight: Radius.circular(roundedLarge))),
                padding: const EdgeInsets.symmetric(
                    horizontal: paddingMedium, vertical: paddingLarge),
                child: Column(
                  children: [
                    const Text("Data Persampahan", style: headline2),
                    const SizedBox(height: paddingXXSmall),
                    const Text("Penganan dan pengurangan", style: paragraph),
                    const SizedBox(height: paddingMedium),
                    Obx(() {
                      String label = controller.data_sampah.value.label ?? '';
                      String count = controller.data_sampah.value.count ?? '';
                      String update = controller.data_sampah.value.update ?? '';
                      int jakstraYear =
                          controller.data_sampah.value.jakstraYear ?? 0;
                      String jakstraMonthlyAverage =
                          controller.data_sampah.value.jakstraMonthlyAverage ??
                              '';
                      if (controller.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: darkGreen,
                          ),
                        );
                      } else {
                        return cardSampah(
                            label,
                            "$count%",
                            "*update terakhir pada $update",
                            "dari proyeksi sampah di tahun $jakstraYear sebanyak $jakstraMonthlyAverage kg");
                      }
                    }),
                    const SizedBox(height: paddingMedium),
                    cardSampah("Penanganan", "42.20%",
                        "*update terakhir pada Desember 2022", ""),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
