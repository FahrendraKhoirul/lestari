import 'package:flutter/material.dart';
import 'package:lestari/constants.dart';

SizedBox searchField(double screenWidth, String hint, void Function(String value) doSomething) {
  return SizedBox(
      width: screenWidth * 1,
      child: TextFormField(
        onFieldSubmitted: doSomething,
        decoration: InputDecoration(
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: extraLightGrey),
            borderRadius: BorderRadius.circular(roundedSize),
          ),
          fillColor: extraLightGrey,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(roundedSize),
              borderSide: const BorderSide(color: extraLightGrey, width: 3)),
          contentPadding: const EdgeInsets.symmetric(vertical: paddingSmall),
          hintText: hint,
          hintStyle: paragraph,
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 30, right: 10),
            child: Icon(
              Icons.search,
              color: earieBlack,
              size: 20,
            ),
          ),
        ),
      ));
}
