import 'package:cartoon_ui/core/theme/app_colors.dart';
import 'package:cartoon_ui/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.white,
  drawerTheme: DrawerThemeData(scrimColor: AppColors.white.withOpacity(0.7)),
  appBarTheme: const AppBarTheme(
    color: AppColors.white,
    elevation: 0.0,
    titleTextStyle: AppTextStyle.appBar,
    iconTheme: IconThemeData(color: AppColors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.black,
    selectionColor: AppColors.black,
    selectionHandleColor: AppColors.black,
  ),
  scaffoldBackgroundColor: AppColors.white,
);
