import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Widget customChip(String text, VoidCallback onTap, Color color) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        // outline rounded border
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color, width: 1)),
        child: Text(text,
            style: customTextStyle(
                size: 14, weight: FontWeight.w400, color: color)),
      ));
}
