import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Widget landingListItem(String images, titleText, descText) {
  return Container(
    margin: const EdgeInsets.only(bottom: paddingSmall),
    child: Row(
      children: [
        Image.asset(
          images,
          width: 50,
        ),
        const SizedBox(width: paddingSmall),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titleText, style: title),
              const SizedBox(height: paddingXXSmall),
              Text(descText, style: paragraph)
            ],
          ),
        )
      ],
    ),
  );
}
