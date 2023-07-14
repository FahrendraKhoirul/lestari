import 'package:flutter/material.dart';
import 'package:lestari/app/global_widgets/custom_buttons.dart';
import 'package:lestari/constants.dart';

Expanded roundedCardDetail(String title, date, desc, Function() fun) {
  return Expanded(
    child: Container(
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(roundedLarge),
              topRight: Radius.circular(roundedLarge))),
      padding: const EdgeInsets.symmetric(
          horizontal: paddingMedium, vertical: paddingLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Nomor ",
                style: headline2,
                children: <TextSpan>[
                  TextSpan(
                      text: title,
                      style: customTextStyle(size: 20, weight: FontWeight.w400))
                ]),
          ),
          const SizedBox(height: paddingSmall),
          Text(date, style: customTextStyle(size: 16, weight: FontWeight.w400)),
          const SizedBox(height: paddingLarge),
          Text("Deskripsi",
              style: customTextStyle(size: 14, weight: FontWeight.w600)),
          const SizedBox(height: paddingSmall),
          Container(
            margin: const EdgeInsets.only(bottom: paddingSmall),
            padding: const EdgeInsets.all(paddingMedium),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(roundedSize),
              color: extraLightGrey,
            ),
            child: Text(
              desc,
              style: paragraph,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: paddingSmall),
          Center(child: buttonSmall("Unduh berkas", () => null, paddingSmall))
        ],
      ),
    ),
  );
}
