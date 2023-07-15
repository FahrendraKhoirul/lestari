import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_location.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/myscrollbeahaviour.dart';
import 'package:lestari/app/modules/home/controllers/location_controller.dart';
import 'package:lestari/constants.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: MyScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  customHeader(
                      image: "assets/images/illus_lokasi.png",
                      backButton: false,
                      title: 'Lokasi',
                      imageWidth: 90,
                      subtitle:
                          'Temukan infrastruktur persampahan di Nusa Tenggara Barat'),
                  Obx(() => controller.isLoading.value
                      ? const CircularProgressIndicator()
                      : ListView.builder(
                          padding: const EdgeInsets.fromLTRB(paddingMedium,
                              paddingXXSmall, paddingMedium, paddingXXSmall),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.locations.length,
                          itemBuilder: (context, index) {
                            String titleText =
                                controller.locations[index].label ?? '';
                            int subtitleText =
                                controller.locations[index].count ?? 0;
                            String images = controller.listImage[index];
                            return cardLocation(titleText,
                                subtitleText.toString(), images, () {});
                          }))
                ],
              ),
            ),
          ),
        ));
  }
}
