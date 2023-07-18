import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:lestari/app/modules/landing/controllers/splash_controller.dart';
import 'package:lestari/constants.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    controller.endScreen();
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child: Container(),
        ),
        Animate(
            effects: const [ShimmerEffect()],
            child: Image.asset("assets/images/lestari_logo.png", width: 150)
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(duration: const Duration(seconds: 2))),
        Flexible(
          flex: 2,
          child: Container(),
        ),
        Image.asset("assets/images/illus_splashscreen.png", width: widthScreen),
        Container(
          margin:
              const EdgeInsets.only(top: paddingSmall, bottom: paddingSmall),
          child: const Text(
            "2023 Lestari - Dinas Kominfotik NTB",
            textAlign: TextAlign.center,
            style: paragraph,
          ),
        ),
      ],
    ));
  }
}
