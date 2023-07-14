import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

Container listCardItem(String title, desc, image, double screenWidth) {
  return Container(
    margin: const EdgeInsets.only(bottom: paddingMedium),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("12 April 2023",
                style: customTextStyle(size: 16, weight: FontWeight.w600)),
            const SizedBox(height: paddingXXSmall),
            SizedBox(
              width: screenWidth - (paddingMedium * 2) - 100,
              child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta ullamcorper dui, vel dignissim orci",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
            ),
          ],
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    "https://media.npr.org/assets/img/2012/10/28/trash2-614f006a7e1d70a7fee7c5d5a92788107dd0c8a7.jpg"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(roundedSize),
            boxShadow: cardShadow,
          ),
        )
      ],
    ),
  );
}
