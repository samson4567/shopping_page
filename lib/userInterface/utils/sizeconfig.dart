import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static EdgeInsets? padding;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    padding = _mediaQueryData!.padding;
  }
}

/// Get the proportionate height as per screen size
double getScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;

  /// figma height 872
  return (inputHeight / 872.0) * screenHeight;
}

/// Get the proportionate height as per screen
double getScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;

  /// figma width 375
  return (inputWidth / 375.0) * screenWidth;
}
