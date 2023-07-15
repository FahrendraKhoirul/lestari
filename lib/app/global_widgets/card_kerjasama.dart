import 'package:flutter/material.dart';
import 'package:lestari/app/global_widgets/custom_buttons.dart';
import 'package:lestari/constants.dart';

Container cardKerjasama(String number, date, work, desc, Function() fun) {
  return Container(
    margin: const EdgeInsets.only(bottom: paddingSmall),
    padding: const EdgeInsets.symmetric(
        horizontal: paddingSmall, vertical: paddingSmall),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(roundedSize),
      color: extraLightGrey,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.file_present_outlined, color: darkGreen, size: 20),
            const SizedBox(width: paddingXXSmall),
            Text(
              number,
              style: customTextStyle(size: 14, weight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: paddingSmall),
        Text(date, style: customTextStyle(size: 14, weight: FontWeight.w600)),
        const SizedBox(height: paddingXXSmall),
        Text(work, style: customTextStyle(size: 14, weight: FontWeight.w600)),
        const SizedBox(height: paddingSmall),
        Text(
          desc,
          style: paragraph,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: paddingSmall),
        Align(
            alignment: Alignment.bottomRight,
            child: buttonSmall("Detail", fun, paddingXSmall))
      ],
    ),
  );
}
