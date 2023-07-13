import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_sampah.dart';
import 'package:lestari/constants.dart';

import '../controllers/try_controller.dart';

class DataSampahView extends GetView<TryController> {
  const DataSampahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: extraDarkGreen,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar("Data Sampah"),
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
                    cardSampah(
                        "Pengurangan",
                        "12.81%",
                        "*update terakhir pada Desember 2022",
                        "dari proyeksi sampah di tahun 2002 sebanyak 226.51 kg"),
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
