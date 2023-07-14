import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_location.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/myscrollbeahaviour.dart';
import 'package:lestari/constants.dart';

class LocationView extends GetView {
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
                      imageWidth: 75,
                      subtitle:
                          'Temukan infrastruktur persampahan \ndi Nusa Tenggara Barat'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                        paddingMedium, 0, paddingMedium, paddingMedium),
                    child: Column(
                      children: [
                        cardLocation("Usaha Persampahan", "145",
                            "assets/icons/icon_usaha persampahan.png", () {}),
                        cardLocation(
                            "Komunitas Peduli Sampah",
                            "145",
                            "assets/icons/icon_komunitas peduli sampah.png",
                            () {}),
                        cardLocation("Pengelolaan", "145",
                            "assets/icons/icon_pengelola sampah.png", () {}),
                        cardLocation("Penampungan Sampah", "145",
                            "assets/icons/icon_penampungan sampah.png", () {}),
                        cardLocation("Timbunan Sampah Illegal", "145",
                            "assets/icons/icon_timbunan sampah.png", () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
