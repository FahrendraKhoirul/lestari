import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_agenda.dart';
import 'package:lestari/app/global_widgets/custom_chip.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/myscrollbeahaviour.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/app/modules/home/controllers/agenda_controller.dart';
import 'package:lestari/constants.dart';

class AgendaView extends GetView<AgendaController> {
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
                        paddingMedium, 0, paddingMedium, paddingXXSmall),
                    child: Column(
                      children: [
                        searchField(double.infinity, "cari agenda..",
                            (valueField) {
                          controller.searchText.value =
                              valueField.toLowerCase();
                          controller.sortBySearch();
                        }),
                        SizedBox(
                          height: paddingXXSmall,
                        ),
                        Obx(() => Row(
                              children: [
                                controller.eventTypeSelectedIndex == 0
                                    ? customChip("Offline", () {}, darkGreen)
                                    : customChip("Offline", () {
                                        controller.changeEventTypeIndex(0);
                                        controller.changeEventType("Offline");
                                      }, lightBlack.withOpacity(0.6)),
                                SizedBox(width: paddingXXSmall),
                                controller.eventTypeSelectedIndex == 1
                                    ? customChip("Online", () {}, darkGreen)
                                    : customChip("Online", () {
                                        controller.changeEventTypeIndex(1);
                                        controller.changeEventType("Online");
                                      }, lightBlack.withOpacity(0.6)),
                                SizedBox(width: paddingXXSmall),
                                controller.eventTypeSelectedIndex == 2
                                    ? customChip("Hybrid", () {}, darkGreen)
                                    : customChip("Hybrid", () {
                                        controller.changeEventTypeIndex(2);
                                        controller.changeEventType("Hybrid");
                                      }, lightBlack.withOpacity(0.6))
                              ],
                            ))
                      ],
                    ),
                  ),
                  Obx(() => controller.isLoading.value
                      ? CircularProgressIndicator()
                      : ListView.builder(
                          padding: EdgeInsets.fromLTRB(
                              paddingMedium, 0, paddingMedium, paddingMedium),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.agendasBySearch.length,
                          itemBuilder: (context, index) {
                            final titleText =
                                controller.agendasBySearch[index].name ?? '';
                            final subtitleText =
                                controller.agendasBySearch[index].datetimeId ??
                                    '';
                            return cardAgenda(titleText, subtitleText, () {});
                          },
                        ))
                ],
              ),
            ),
          ),
        ));
  }
}
