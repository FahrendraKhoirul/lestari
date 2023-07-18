import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/myscrollbeahaviour.dart';
import 'package:lestari/app/modules/home/controllers/home_page_controller.dart';
import '../../../../constants.dart';
import '../../../global_widgets/card_button_grid.dart';
import '../../../global_widgets/card_home.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var cardFeatureWidht =
        (widthScreen - (paddingMedium * 2) - paddingSmall) / 2;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: MyScrollBehavior(),
            child: SingleChildScrollView(
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
                            top: paddingLarge * 1.5, bottom: paddingMedium * 2),
                        child: Text("Selamat Datang",
                            style: customTextStyle(
                                size: 20,
                                weight: FontWeight.w600,
                                color: extraDarkGreen)),
                      ),
                      cardHome(),
                      const SizedBox(height: paddingMedium),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Jelajahi Lestari", style: title)),
                      const SizedBox(height: paddingXXSmall),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("6 fitur tersedia",
                              style: customTextStyle(
                                  size: 14,
                                  color: grey,
                                  weight: FontWeight.w400))),
                      const SizedBox(height: paddingXSmall),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardButtonGrid(
                            icon: Image.asset("assets/icons/icon_panduan.png",
                                height: 50),
                            title: "Panduan",
                            subtitle: "Petunjuk praktis cara mengelola sampah",
                            width: cardFeatureWidht,
                            onTap: () {
                              Get.toNamed("/panduan");
                            },
                          ),
                          cardButtonGrid(
                            icon: Image.asset(
                                "assets/icons/icon_data_sampah.png",
                                height: 50),
                            title: "Data Sampah",
                            subtitle: "Petunjuk praktis cara mengelola sampah",
                            width: cardFeatureWidht,
                            onTap: () {
                              Get.toNamed("/data-sampah");
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: paddingXSmall),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardButtonGrid(
                              icon: Image.asset("assets/icons/icon_aduan.png",
                                  height: 50),
                              title: "Aduan",
                              subtitle:
                                  "Petunjuk praktis cara mengelola sampah",
                              width: cardFeatureWidht,
                              onTap: () {
                                Get.toNamed("/aduan");
                              }),
                          cardButtonGrid(
                              icon: Image.asset(
                                  "assets/icons/icon_kerja_sama.png",
                                  height: 50),
                              title: "Kerjasama",
                              subtitle:
                                  "Petunjuk praktis cara mengelola sampah",
                              width: cardFeatureWidht,
                              onTap: () {
                                Get.toNamed("/kerjasama");
                              }),
                        ],
                      ),
                      const SizedBox(height: paddingXSmall),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardButtonGrid(
                            icon: Image.asset("assets/icons/icon_ntb_hijau.png",
                                height: 50),
                            title: "NTB Hijau",
                            subtitle: "Petunjuk praktis cara mengelola sampah",
                            width: cardFeatureWidht,
                            onTap: () {
                              Get.toNamed("/ntb-hijau");
                            },
                          ),
                          cardButtonGrid(
                            icon: Image.asset("assets/icons/icon_sarpras.png",
                                height: 50),
                            title: "Sarpras",
                            subtitle: "Petunjuk praktis cara mengelola sampah",
                            width: cardFeatureWidht,
                            onTap: () {
                              Get.toNamed("/sarpras");
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: paddingMedium * 1)
                    ]),
              ),
            ])),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            controller.launchURL();
          },
          label: Text("Tanya Lestari",
              style: customTextStyle(size: 14, color: white)),
          icon: Image.asset("assets/icons/icon_tanya.png", height: 20),
          backgroundColor: darkGreen,
        ));
  }
}
