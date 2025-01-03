import 'package:flutter/material.dart';

class AppDimentions {
  static late double screenHight;
  static late double screenWidth;

  static void initScreenDimensions(BuildContext context) {
    screenHight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
  }
}
