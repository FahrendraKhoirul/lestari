import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

import '../../app/global_widgets/custom_buttons.dart';
import '../../app/global_widgets/landing_widgets.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: paddingMedium, vertical: paddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: paddingMedium),
            RichText(
              text: TextSpan(
                  text: "Selamat datang di \n",
                  style: headline1,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Lestari ",
                        style: customTextStyle(
                            size: 28,
                            color: darkGreen,
                            weight: FontWeight.w700)),
                    const TextSpan(text: "Mobile!", style: headline1)
                  ]),
            ),
            const SizedBox(height: paddingSmall),
            const Text(
                "Lestari Mobile: Mengubah NTB menjadi destinasi yang lebih segar dan lestari.",
                style: paragraph),
            const SizedBox(height: paddingLarge),
            landingListItem("assets/images/illus_panduan.png", "Panduan",
                "Petunjuk praktis tentang cara efektif mengolah sampah"),
            landingListItem(
                "assets/images/illus_lokasi.png",
                "Lokasi infrastruktrur persampahan",
                "Informasi lokasi tempat pembuangan sampah dan fasilitas pengolahan sampah lainnya"),
            landingListItem("assets/images/illus_agenda.png", "Agenda",
                "Melacak jadwal kegiatan atau acara terkait pengelolaan sampah"),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/illus_landing.png",
                height: (heightScreen - 320) * 0.37,
              ),
            ),
            buttonExpanded("Continue", () {}),
          ],
        ),
      ),
    );
  }
}
