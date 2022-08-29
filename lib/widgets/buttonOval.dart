import 'package:calculator/utils/constants.dart';
import 'package:calculator/widgets/switchMode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buttonOval(
    {String? title,
    double padding = 17,
    IconData? icon,
    Color? iconColor,
    Color? textColor}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: NeuContainer(
      borderRadius: BorderRadius.circular(40),
      padding: EdgeInsets.all(padding),
      child: Container(
        width: padding * 8,
        height: padding * 2,
        child: Center(
            child: title != null
                ? Text(
                    title,
                    style: TextStyle(
                        color: textColor ??
                            (Get.isDarkMode ? white : darkHeaderClr),
                        fontSize: 30),
                  )
                : Icon(
                    icon,
                    color: iconColor,
                    size: 30,
                  )),
      ),
    ),
  );
}
