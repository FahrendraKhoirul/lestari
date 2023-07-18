import 'package:carousel_slider/carousel_slider.dart';
import 'package:lestari/app/modules/home/controllers/carousel_controller.dart'
    as myController;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/constants.dart';
import 'package:popup_banner/popup_banner.dart';

class CarouselWidget extends GetView<myController.CarouselController> {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myController.CarouselController());

    return Obx(() {
      if (controller.isLoading.value) {
        return Container(
          height: 100,
          child: const Center(
            child: CircularProgressIndicator(
              color: darkGreen,
            ),
          ),
        );
      }
      return CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          // autoPlayAnimationDuration: Duration(milliseconds: 800),
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: controller.carousels.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onLongPress: () {
                  PopupBanner(
                    context: context,
                    images: controller.convertToListString(),
                    useDots: true,
                    autoSlide: false,
                    fit: BoxFit.contain,
                    onClick: (index) {
                      debugPrint("CLICKED $index");
                    },
                  ).show();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      color: darkGreen,
                      child: Image.network(i.url!,
                          height: 100, fit: BoxFit.cover)),
                ),
              );
            },
          );
        }).toList(),
      );
    });
  }
}
