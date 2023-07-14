import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_agenda.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/constants.dart';

class AgendaView extends GetView {
  const AgendaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              customHeader(
                  image: "assets/images/illus_agenda.png",
                  backButton: false,
                  title: 'Agenda',
                  subtitle:
                      'Temukan agenda kegiatan \nkebersihan di Nusa Tenggara Barat'),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    paddingMedium, 0, paddingMedium, paddingMedium),
                child: Column(
                  children: [
                    cardAgenda("Usaha Persampahan", "145", () {}),
                    cardAgenda("Usaha Persampahan", "145", () {}),
                    cardAgenda("Usaha Persampahan", "145", () {}),
                    cardAgenda("Usaha Persampahan", "145", () {}),
                    cardAgenda("Usaha Persampahan", "145", () {}),
                  ],
                ),
              )
            ],
          )),
        ));
  }
}
