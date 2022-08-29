import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/services/theme_services.dart';
import 'package:calculator/utils/constants.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:calculator/widgets/switchMode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorNeuApp extends StatefulWidget {
  const CalculatorNeuApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorNeuAppState createState() => _CalculatorNeuAppState();
}

final CalculatorController _controller = Get.put(CalculatorController());

class _CalculatorNeuAppState extends State<CalculatorNeuApp> {
  double width = 0.0;
  double height = 0.0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              ThemeService().switchThemeMode();
                            });
                          },
                          child: switchMode()),
                      classSizedBoxHeight(110),
                      Obx(() {
                        final userInput = _controller.input.value;
                        final result = _controller.result.value;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '=',
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Get.isDarkMode
                                          ? blueButton
                                          : pinkClr),
                                ),
                                Text(result, style: kTextStyleUp(55)),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                userInput,
                                style: kTextStyleDown(30),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
                classSizedBoxHeight(10),
                Keyboard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
