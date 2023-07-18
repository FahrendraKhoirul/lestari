import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/detail_lokasi_controller.dart';

class DetailLokasiView extends GetView<DetailLokasiController> {
  const DetailLokasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final argument = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(argument["title"]),
        centerTitle: true,
        backgroundColor: extraDarkGreen,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: WebViewWidget(
          controller: controller.webViewController(argument["index"])),
    );
  }
}
