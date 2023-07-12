import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lestari/app/modules/home/views/screen1.dart';
import 'package:lestari/app/modules/home/views/screen2.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() => Column(
            children: [
              ElevatedButton(
                  onPressed: () =>
                      {controller.isPage.value = !controller.isPage.value},
                  child: const Text("Ganti")),
              controller.isPage.value ? const Screen1() : const Screen2()
            ],
          )),
    );
  }
}
