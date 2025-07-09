import 'package:flutter/material.dart';
import 'package:notebook/utils/colours.dart';

class ThemeClass {
  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().primaryColor,
    scaffoldBackgroundColor: AppColors.kBgColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.kWhiteColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kBgColor,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: AppColors.kWhiteColor
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.kFabColor
    )
  );
}
