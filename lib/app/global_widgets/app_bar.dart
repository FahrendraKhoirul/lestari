import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Padding appBar(String title) {
  return Padding(
    padding: const EdgeInsets.only(
        left: paddingMedium,
        right: paddingMedium,
        top: paddingMedium * 2,
        bottom: paddingMedium),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.arrow_back, color: white, size: 20),
        const Spacer(),
        Text(title,
            style: customTextStyle(
                weight: FontWeight.w600, color: white, size: 20)),
        const Spacer(),
      ],
    ),
  );
}
