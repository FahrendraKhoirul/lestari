import 'package:flutter/material.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_sarpras.dart';
import 'package:lestari/constants.dart';

class SarprasView extends StatelessWidget {
  const SarprasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: extraDarkGreen,
      body: Column(
        children: [
          appBar("Sarpras"),
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
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: paddingMedium,
                    mainAxisSpacing: paddingMedium,
                  ),
                  children: [
                    gridItemCard("assets/icons/icon_truk.png", "24", "Truck"),
                    gridItemCard(
                        "assets/icons/icon_pickup.png", "27", "Pick up"),
                    gridItemCard(
                        "assets/icons/icon_gerobak.png", "102", "Gerobak"),
                    gridItemCard(
                        "assets/icons/icon_timbangan.png", "169", "Timbangan"),
                    gridItemCard(
                        "assets/icons/icon_truk.png", "270", "Roda tiga")
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
