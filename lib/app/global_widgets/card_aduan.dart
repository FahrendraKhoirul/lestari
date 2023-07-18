import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/modules/aduan/aduan_model.dart';
import 'package:lestari/constants.dart';

GestureDetector listCardItem(
    String title, desc, image, double screenWidth, Aduan argument) {
  return GestureDetector(
    onTap: () {
      Get.toNamed("/aduan/detail-aduan", arguments: argument);
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: paddingMedium),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: customTextStyle(size: 16, weight: FontWeight.w600)),
              const SizedBox(height: paddingXXSmall),
              SizedBox(
                width: screenWidth - (paddingMedium * 2) - 100,
                child: Text(desc, overflow: TextOverflow.ellipsis, maxLines: 2),
              ),
            ],
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(roundedSize),
              boxShadow: cardShadow,
            ),
          )
        ],
      ),
    ),
  );
}
