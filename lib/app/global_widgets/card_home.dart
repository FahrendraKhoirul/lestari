import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/constants.dart';

Widget cardHome() {
  return Container(
      padding: const EdgeInsets.all(paddingSmall),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: cardShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ayo ikut berpartisipasi",
              style: customTextStyle(
                  size: 16, weight: FontWeight.w600, color: earieBlack),
            ),
          ),
          const SizedBox(height: paddingSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/komunitas");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_komunitas.png",
                      height: 50,
                    ),
                    const SizedBox(height: paddingXXSmall),
                    const Text(
                      "Komunitas",
                      style: paragraph,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/bank-sampah");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_banksampah.png",
                      height: 50,
                    ),
                    const SizedBox(height: paddingXXSmall),
                    const Text(
                      "Bank Sampah",
                      style: paragraph,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ));
}
