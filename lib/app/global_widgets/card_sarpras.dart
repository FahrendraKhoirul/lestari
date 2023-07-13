import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Container gridItemCard(String icon, number, title) {
  return Container(
    padding: const EdgeInsets.symmetric(
        vertical: paddingMedium, horizontal: paddingMedium),
    decoration: BoxDecoration(
      color: lightGreen,
      borderRadius: BorderRadius.circular(roundedSize),
    ),
    child: Column(
      children: [
        Image.asset(
          icon,
          height: 40,
        ),
        const SizedBox(height: paddingXSmall),
        Text(number, style: headline2),
        const SizedBox(height: paddingXXSmall),
        Text(
          title,
          style: customTextStyle(
              size: 14, color: lightBlack, weight: FontWeight.w500),
        )
      ],
    ),
  );
}
