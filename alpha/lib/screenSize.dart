import 'package:flutter/widgets.dart';

class ScreenSize {
  static double _screenWidth = 0;
  static double _screenHeight = 0;

  static void updateScreenSize(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
  }

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
}
