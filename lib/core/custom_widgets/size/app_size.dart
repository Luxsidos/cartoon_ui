import 'package:flutter/cupertino.dart';

class AppSize {
  AppSize._();

  static double height(double size, BuildContext context) {
    return MediaQuery.of(context).size.height * size;
  }

  static double width(double size, BuildContext context) {
    return MediaQuery.of(context).size.width * size;
  }
}
