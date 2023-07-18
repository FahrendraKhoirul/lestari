import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/modules/aduan/aduan_model.dart';
import 'package:lestari/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/detail_aduan_controller.dart';

class DetailAduanView extends GetView<DetailAduanController> {
  const DetailAduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Aduan argument = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Aduan"),
        centerTitle: true,
        backgroundColor: extraDarkGreen,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: WebViewWidget(
          controller: controller.webViewController(argument.ntbcareReportId!)),
    );
  }
}
