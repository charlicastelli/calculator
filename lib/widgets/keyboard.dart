import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/utils/constants.dart';
import 'package:calculator/widgets/buttonOval.dart';
import 'package:calculator/widgets/buttonRounded.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Keyboard extends StatefulWidget {
  Keyboard({Key? key}) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  final CalculatorController _controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _controller.digitValidator('C');
              },
              child: buttonRounded(
                  title: 'C', textColor: Get.isDarkMode ? blueButton : pinkClr),
            ),
            GestureDetector(
              onTap: () {
                _controller.digitValidator('CRL');
              },
              child: buttonRounded(
                  icon: Icons.backspace_outlined,
                  iconColor: Get.isDarkMode ? blueButton : pinkClr),
            ),
            GestureDetector(
              onTap: () {
                _controller.digitValidator('%');
              },
              child: buttonRounded(
                  title: '%', textColor: Get.isDarkMode ? blueButton : pinkClr),
            ),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('/');
                },
                child: buttonRounded(
                    title: '/',
                    textColor: Get.isDarkMode ? blueButton : pinkClr)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('7');
                },
                child: buttonRounded(title: '7')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('8');
                },
                child: buttonRounded(title: '8')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('9');
                },
                child: buttonRounded(title: '9')),
            GestureDetector(
              onTap: () {
                _controller.digitValidator('x');
              },
              child: buttonRounded(
                  title: 'x', textColor: Get.isDarkMode ? blueButton : pinkClr),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('4');
                },
                child: buttonRounded(title: '4')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('5');
                },
                child: buttonRounded(title: '5')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('6');
                },
                child: buttonRounded(title: '6')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('-');
                },
                child: buttonRounded(
                    title: '-',
                    textColor: Get.isDarkMode ? blueButton : pinkClr)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('1');
                },
                child: buttonRounded(title: '1')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('2');
                },
                child: buttonRounded(title: '2')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('3');
                },
                child: buttonRounded(title: '3')),
            GestureDetector(
              onTap: () {
                _controller.digitValidator('+');
              },
              child: buttonRounded(
                  title: '+', textColor: Get.isDarkMode ? blueButton : pinkClr),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('0');
                },
                child: buttonRounded(title: '0')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator(',');
                },
                child: buttonRounded(title: ',')),
            GestureDetector(
                onTap: () {
                  _controller.digitValidator('=');
                },
                child: buttonOval(
                    title: '=',
                    textColor: Get.isDarkMode ? blueButton : pinkClr)),
          ],
        )
      ]),
    );
  }
}
