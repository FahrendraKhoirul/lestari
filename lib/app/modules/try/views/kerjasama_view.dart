import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_kerjasama.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/constants.dart';

class KerjasamaView extends GetView {
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
                  ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return cardKerjasama(
                          "7/SPPP/CL/2022",
                          "02 Maret 2022",
                          "Kerjasama Pemerintah",
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed lacus a elit",
                          () {});
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
