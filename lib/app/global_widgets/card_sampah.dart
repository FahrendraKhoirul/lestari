import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Container cardSampah(String title, percent, update, other) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(
        vertical: paddingSmall, horizontal: paddingSmall),
    decoration: BoxDecoration(
      color: lightGreen,
      borderRadius: BorderRadius.circular(roundedSize),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: customTextStyle(size: 16, weight: FontWeight.w600),
        ),
        const SizedBox(height: paddingMedium),
        Text(percent,
            style: customTextStyle(
                size: 42, weight: FontWeight.w700, color: extraDarkGreen)),
        const SizedBox(height: paddingXSmall),
        Text(update, style: paragraph),
        const SizedBox(height: paddingXXSmall),
        Text(
          other,
          style: customTextStyle(size: 10, color: redDanger),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
