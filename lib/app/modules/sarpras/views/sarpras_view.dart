import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_sarpras.dart';
import 'package:lestari/constants.dart';
import '../controllers/sarpras_controller.dart';

class SarprasView extends GetView<SarprasController> {
  const SarprasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: extraDarkGreen,
      body: Column(
        children: [
          appBar(context, "Sarpras"),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Sarana dan Prasarana", style: headline2),
                const SizedBox(height: paddingMedium),
                Obx(() {
                  if (controller.isLoading.value) {
                    return const Expanded(
                      child: Center(
                          child: CircularProgressIndicator(color: darkGreen)),
                    );
                  } else {
                    return GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: paddingMedium,
                        mainAxisSpacing: paddingMedium,
                      ),
                      children: [
                        gridItemCard("assets/icons/icon_truk.png",
                            controller.sarpras.value.truck, "Truck"),
                        gridItemCard("assets/icons/icon_pickup.png",
                            controller.sarpras.value.pickup, "Pick up"),
                        gridItemCard("assets/icons/icon_gerobak.png",
                            controller.sarpras.value.dray, "Gerobak"),
                        gridItemCard("assets/icons/icon_timbangan.png",
                            controller.sarpras.value.scale, "Timbangan"),
                        gridItemCard("assets/icons/icon_truk.png",
                            controller.sarpras.value.tricycle, "Roda tiga")
                      ],
                    );
                  }
                })
              ],
            ),
          ))
        ],
      ),
    );
  }
}
