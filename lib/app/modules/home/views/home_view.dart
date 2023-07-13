import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: bottom,
    );
  }
}
