// make widget for header

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/constants.dart';

Widget customHeader({
  String title = "title",
  String subtitle = "subtitle",
  double bottomPadding = paddingSmall,
  double imageWidth = 95,
  required String image,
  required bool backButton,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: paddingSmall),
    decoration: BoxDecoration(
      // make shadow
      color: white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          spreadRadius: 0,
          blurRadius: 14,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ],
    ),
    padding: EdgeInsets.fromLTRB(paddingMedium + paddingXXSmall, paddingSmall,
        paddingMedium, bottomPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (backButton)
          InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Get.back();
            },
          )
        else
          const SizedBox(
            height: paddingXXSmall,
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: headline2,
                  ),
                  const SizedBox(
                    height: paddingSmall,
                  ),
                  Text(
                    subtitle,
                    style: paragraph,
                  ),
                ],
              ),
            ),
            Image.asset(
              image,
              width: imageWidth,
            )
          ],
        ),
      ],
    ),
  );
}
