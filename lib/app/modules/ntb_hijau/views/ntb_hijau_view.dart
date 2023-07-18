import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/ntb_hijau_controller.dart';

class NtbHijauView extends GetView<NtbHijauController> {
  const NtbHijauView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NTB Hijau'),
        centerTitle: true,
        backgroundColor: extraDarkGreen,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                controller.webViewController.reload();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: WebViewWidget(controller: controller.webViewController),
    );
  }
}
