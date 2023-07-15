import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_detail.dart';
import 'package:lestari/app/modules/panduan/panduan_model.dart';
import 'package:lestari/constants.dart';

import '../controllers/detail_panduan_controller.dart';

class DetailPanduanView extends GetView<DetailPanduanController> {
  const DetailPanduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Panduan data = Get.arguments;

    return Scaffold(
      backgroundColor: extraDarkGreen,
      body: Column(
        children: [
          appBar(context, "Detail Panduan"),
          roundedCardDetail(data.title ?? '', "", data.type ?? "",
              data.desc ?? "tidak ada deskripsi", () {})
        ],
      ),
    );
  }
}
