import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';


 class AppTextStyle {
  AppTextStyle._();

  static const TextStyle appBar = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22.0,
    color: AppColors.black,
  );

  static const TextStyle data = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: AppColors.black,
  );

  static const TextStyle main = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 26.0,
    color: AppColors.black,
  );

  static const TextStyle moreData = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    color: AppColors.blackTwo,
  );
}
