import 'package:calculator/main.dart';
import 'package:calculator/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget switchMode() {
  bool darkMode = false;
  return NeuContainer(
    darkMode: darkMode,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    borderRadius: BorderRadius.circular(40),
    child: Container(
      width: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.wb_sunny,
          color: Get.isDarkMode ? Colors.grey : pinkClr,
        ),
        Icon(
          Icons.nightlight_round,
          color: Get.isDarkMode ? blueButton : Colors.grey,
        ),
      ]),
    ),
  );
}

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  NeuContainer(
      {Key? key,
      this.darkMode = false,
      required this.child,
      required this.borderRadius,
      required this.padding})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: Get.isDarkMode ? darkHeaderClr : white,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                      color: Get.isDarkMode
                          ? Colors.black54
                          : Colors.blueGrey.shade200,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                        color: Get.isDarkMode
                            ? const Color(0xFF2D2F41)
                            : Colors.white,
                        offset: const Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0)
                  ]),
        child: widget.child,
      ),
    );
  }
}
