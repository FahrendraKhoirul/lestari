import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_agenda.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/myscrollbeahaviour.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/constants.dart';

class AgendaView extends GetView {
  const AgendaView({Key? key}) : super(key: key);
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
                        searchField(double.infinity, "cari agenda", (value) {}),
                        SizedBox(height: paddingSmall),
                        cardAgenda("Usaha Persampahan", "145", () {}),
                        cardAgenda("Usaha Persampahan", "145", () {}),
                        cardAgenda("Usaha Persampahan", "145", () {}),
                        cardAgenda("Usaha Persampahan", "145", () {}),
                        cardAgenda("Usaha Persampahan", "145", () {}),
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
