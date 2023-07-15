import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lestari/app/global_widgets/card_aduan.dart';
import 'package:lestari/app/global_widgets/header.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/constants.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../controllers/aduan_controller.dart';

class AduanView extends GetView<AduanController> {
  const AduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customHeader(
                title: "Aduan",
                subtitle:
                    "Temukan infrastruktur persampahan di Nusa Tenggara Barat",
                image: "assets/images/illus_aduan.png",
                backButton: true,
                bottomPadding: 0,
                bottomTextPadding: paddingLarge),
            Padding(
              padding: const EdgeInsets.only(
                  top: paddingXXSmall,
                  left: paddingMedium,
                  right: paddingMedium,
                  bottom: paddingMedium),
              child: Column(
                children: [
                  searchField(screenWidth, "Cari aduan...", (value) {
                    controller.searchValue.value = value.toLowerCase();
                    controller.searchData();
                  }),
                  Obx(() => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(color: darkGreen))
                      : controller.aduanBySearch.isEmpty
                          ? SizedBox(
                              height: Get.height * 0.5,
                              child: const Center(
                                child: Text('Tidak ada aduan'),
                              ),
                            )
                          : ListView.builder(
                              itemCount: controller.aduanBySearch.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              addAutomaticKeepAlives: false,
                              cacheExtent: 10.0,
                              itemBuilder: (context, index) {
                                final date =
                                    controller.aduanBySearch[index].createdAt ??
                                        '';
                                DateFormat format =
                                    new DateFormat("yyyy-MM-dd HH:mm:ss");
                                var formattedDate = format.parse(date);

                                final keywordDate =
                                    "${formattedDate.day} ${controller.monthNames[formattedDate.month]}";
                                String desc =
                                    controller.aduanBySearch[index].desc ?? '';
                                String imageUrl =
                                    controller.aduanBySearch[index].image ?? '';
                                return listCardItem(
                                    keywordDate, desc, imageUrl, screenWidth);
                              }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
