import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Widget buttonExpanded(String text, Function() fun) {
  return SizedBox(
    width: double.infinity,
    height: 52,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: darkGreen,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(roundedSize))),
      child: Text(
        text,
        style: buttonTextStyle,
      ),
    ),
  );
}

Widget buttonSmall(String text, Function() fun) {
  return ElevatedButton(
    onPressed: fun,
    style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(paddingXXSmall),
        backgroundColor: darkGreen,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(roundedSize))),
    child: Text(
      text,
      style: buttonTextStyle,
    ),
  );
}
