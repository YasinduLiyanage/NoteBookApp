import 'package:flutter/material.dart';

class AppColors {
  //primary colors
  static const Color kBgColor = Color(0xFF202326);
  static const Color kFabColor = Color.fromARGB(255, 131, 130, 130);
  static const Color kCardColor = Color(0xFF2f3225);
  static const Color kWhiteColor = Colors.white;

  //gradient colors
  static const int kGradientColor1 = 0xFFFFFFFF;
  static const int kGradientColor2 = 0xD3D3D3;
  

  LinearGradient kPrimaryGradient = LinearGradient(
    colors: [Color(kGradientColor1), Color(kGradientColor2)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight
    );
}
