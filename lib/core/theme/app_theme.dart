import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.white,
  appBarTheme: const AppBarTheme(
    color: AppColors.white,
    elevation: 0.0,
    titleTextStyle: AppTextStyle.appBar,
    systemOverlayStyle:  SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  scaffoldBackgroundColor: AppColors.white,
);


