import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryClr = Colors.white;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = const Color(0xFF424242);
const Color blueButton = Color(0xFF61A3FE);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;

class Themes {
  static final light = ThemeData(
      backgroundColor: primaryClr,
      primaryColor: primaryClr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}

TextStyle kTextStyleUp(double size) {
  return GoogleFonts.arimaMadurai(
    textStyle: TextStyle(
        fontSize: size,
        color: Get.isDarkMode ? white : Colors.black,
        fontWeight: FontWeight.bold),
  );
}

TextStyle kTextStyleDown(double size) {
  return GoogleFonts.arimaMadurai(
    textStyle: TextStyle(
        fontSize: size, color: Colors.grey, fontWeight: FontWeight.bold),
  );
}

classSizedBoxHeight(double height) {
  return SizedBox(
    height: height,
  );
}

classSizedBoxWidth() {
  return const SizedBox(
    width: 5,
  );
}
