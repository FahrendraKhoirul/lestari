import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Widget cardAgenda(
  String titleText,
  String subtitleText,
  VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: paddingSmall),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: cardShadowSmall,
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              // border circular just top left and bottom left
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: extraDarkGreen,
            ),
            width: 8,
            height: double.infinity,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(paddingSmall),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: title,
                    maxLines: 2,
                  ),
                  const SizedBox(height: paddingXXSmall),
                  Text(
                    subtitleText,
                    style: paragraph,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
