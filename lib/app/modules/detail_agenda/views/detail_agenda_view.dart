import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/agenda_model.dart';
import 'package:lestari/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/detail_agenda_controller.dart';

class DetailAgendaView extends GetView<DetailAgendaController> {
  const DetailAgendaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Agenda argument = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Agenda'),
        centerTitle: true,
        backgroundColor: extraDarkGreen,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: WebViewWidget(
          controller: controller.webViewController(argument.id.toString())),
    );
  }
}
