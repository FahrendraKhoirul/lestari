import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/app_bar.dart';
import 'package:lestari/app/global_widgets/card_detail.dart';
import 'package:lestari/app/modules/kerjasama/kerjasama_model.dart';
import 'package:lestari/constants.dart';

import '../controllers/detail_kerjasama_controller.dart';

class DetailKerjasamaView extends GetView<DetailKerjasamaController> {
  const DetailKerjasamaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Kerjasama datas  = Get.arguments;

    return Scaffold(
      backgroundColor: extraDarkGreen,
      body: Column(
        children: [
          appBar(context, "Detail Kerjasama"),
          roundedCardDetail(
              datas.number as String,
              datas.date,
              datas.description,
              () {})
        ],
      ),
    );
  }
}
