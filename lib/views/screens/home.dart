import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';
import 'package:lestari/views/widgets/card_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
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
                    top: paddingLarge * 1.7, bottom: paddingMedium * 2.7),
                child: Text("Selamat Datang",
                    style: customTextStyle(
                        size: 18,
                        weight: FontWeight.w600,
                        color: extraDarkGreen)),
              ),
              cardHome(),
              SizedBox(height: paddingMedium),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Jelajahi Lestari", style: title)),
              SizedBox(height: paddingXXSmall),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("6 fitur tersedia",
                      style: customTextStyle(
                          size: 12, color: grey, weight: FontWeight.w400))),
            ],
          ),
        )
      ]),
    );
  }
}
