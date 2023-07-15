import 'package:flutter/material.dart';

import '../../constants.dart';

Widget cardButtonGrid({
  required Widget icon,
  required String title,
  required VoidCallback onTap,
  required String subtitle,
  double width = 150,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: cardShadowSmall,
        ),
        padding: const EdgeInsets.all(paddingSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(height: paddingXXSmall),
            Text(
              title,
              style: customTextStyle(
                  size: 16, weight: FontWeight.w600, color: earieBlack),
            ),
            const SizedBox(height: paddingXXSmall),
            Text(
              subtitle,
              style: customTextStyle(
                  size: 14, weight: FontWeight.w400, color: lightBlack),
              maxLines: 4,
            ),
          ],
        )),
  );
}
