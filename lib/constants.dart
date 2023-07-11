// import material package
import 'package:flutter/material.dart';

// Color
const darkGreen = Color(0xFF40A475);
const lightGreen = Color(0xFFEDFCF5);
const extraDarkGreen = Color(0xFF245E56);
const lightBlack = Color(0xFF666969);
const earieBlack = Color(0xFF171D1C);
const extraLightGrey = Color(0xFFF6F6F6);
const grey = Color(0xFF7B7B7B);
const redDanger = Color(0xFFC75A4C);
const white = Color(0xFFFFFFFF);
const topGreenGradient = Color(0xFF41E293);
const bottomGreenGradient = Color(0xFF40A575);

// gradient color
const gradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    topGreenGradient,
    bottomGreenGradient,
  ],
);

// create function to custom text style
TextStyle customTextStyle({
  Color color = earieBlack,
  double size = 14,
  FontWeight weight = FontWeight.normal,
}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontWeight: weight,
  );
}

// Text Style
const headline1 = TextStyle(
  color: earieBlack,
  fontSize: 28,
  fontWeight: FontWeight.w600,
);

const headline2 = TextStyle(
  color: earieBlack,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const title = TextStyle(
  color: earieBlack,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

const paragraph = TextStyle(
  color: earieBlack,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const buttonTextStyle = TextStyle(
  color: white,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

// size variable
const paddingLarge = 32.0;
const paddingMedium = 24.0;
const paddingSmall = 16.0;
const paddingXSmall = 12.0;
const paddingXXSmall = 8.0;
const roundedSize = 8.0;
const roundedLarge = 18.0;

// custom box decoration
BoxDecoration customBoxDecoration({
  Color color = white,
  double radius = roundedSize,
  double blurRadius = 8,
  double spreadRadius = 0,
  Offset offset = const Offset(0, 0),
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        blurRadius: blurRadius,
        spreadRadius: spreadRadius,
        offset: offset,
      ),
    ],
  );
}

var buttonShadow = [
  BoxShadow(
      color: darkGreen.withOpacity(0.5),
      blurRadius: 8,
      spreadRadius: 0,
      offset: const Offset(1, 4)),
];

var cardShadow = [
  BoxShadow(
      color: earieBlack.withOpacity(0.06),
      blurRadius: 10,
      spreadRadius: 1,
      offset: const Offset(0, 4)),
];

var cardShadowSmall = [
  BoxShadow(
      color: earieBlack.withOpacity(0.06),
      blurRadius: 10,
      spreadRadius: 0,
      offset: const Offset(0, 2)),
];

var appBarShadow = [
  BoxShadow(
      color: earieBlack.withOpacity(0.06),
      blurRadius: 16,
      spreadRadius: 0,
      offset: const Offset(0, 1)),
];
