import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/modules/home/controllers/home_controller.dart';
import 'package:lestari/constants.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.listView[controller.activeViewIndex.value],
          //create bottom nav bar with 3 items
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: white,
            currentIndex: controller.activeViewIndex.value,
            onTap: (index) {
              controller.activeViewIndex.value = index;
              print(controller.activeViewIndex.value);
            },
            showUnselectedLabels: false,
            fixedColor: darkGreen,
            items: [
              BottomNavigationBarItem(
                  icon: controller.activeViewIndex.value == 0
                      ? Image.asset("assets/icons/icon_home_selected.png",
                          height: 20)
                      : Image.asset("assets/icons/icon_home_unselected.png",
                          height: 20),
                  label: 'Beranda'),
              BottomNavigationBarItem(
                icon: controller.activeViewIndex.value == 1
                    ? Image.asset("assets/icons/icon_location_selected.png",
                        height: 20)
                    : Image.asset("assets/icons/icon_location_unselected.png",
                        height: 20),
                label: "Lokasi",
              ),
              BottomNavigationBarItem(
                icon: controller.activeViewIndex.value == 2
                    ? Image.asset("assets/icons/icon_agenda_selected.png",
                        height: 20)
                    : Image.asset("assets/icons/icon_agenda_unselected.png",
                        height: 20),
                label: "Agenda",
              ),
            ],
          ),
        ));
  }
}

class HomePageView {}
