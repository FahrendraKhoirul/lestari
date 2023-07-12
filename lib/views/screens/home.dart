import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';
import 'package:lestari/views/widgets/card_button_grid.dart';
import 'package:lestari/views/widgets/card_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var cardFeatureWidht =
        (widthScreen - (paddingMedium * 2) - paddingSmall) / 2;

    return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
            child: Stack(alignment: Alignment.topCenter, children: [
          Image.asset(
            "assets/images/sky.png",
            width: widthScreen,
          ),
          Padding(
            padding: const EdgeInsets.all(paddingMedium),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: paddingLarge * 1, bottom: paddingMedium * 2),
                    child: Text("Selamat Datang",
                        style: customTextStyle(
                            size: 18,
                            weight: FontWeight.w600,
                            color: extraDarkGreen)),
                  ),
                  cardHome(),
                  const SizedBox(height: paddingXSmall),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Jelajahi Lestari", style: title)),
                  const SizedBox(height: paddingXXSmall),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("6 fitur tersedia",
                          style: customTextStyle(
                              size: 12, color: grey, weight: FontWeight.w400))),
                  const SizedBox(height: paddingXXSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_panduan.png",
                              height: 50),
                          "Panduan",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht),
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_data_sampah.png",
                              height: 50),
                          "Data Sampah",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_aduan.png",
                              height: 50),
                          "Aduan",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht),
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_kerja_sama.png",
                              height: 50),
                          "Kerjasama",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_ntb_hijau.png",
                              height: 50),
                          "NTB Hijau",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht),
                      cardButtonGrid(
                          Image.asset("assets/icons/icon_sarpras.png",
                              height: 50),
                          "Sarpras",
                          "Petunjuk praktis cara mengelola sampah",
                          width: cardFeatureWidht)
                    ],
                  ),
                  const SizedBox(height: paddingLarge * 2)
                ]),
          ),
        ])));
  }
}
