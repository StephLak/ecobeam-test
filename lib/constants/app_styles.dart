import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static const String loraFontFamily = 'Lora';
  static const String _sansFontFamily = 'Sans';

  static TextStyle regularTextStyle({
    Color color = AppColors.primaryColor,
    double size = 14,
    String? fontFamily = _sansFontFamily,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: color,
      fontFamily: fontFamily,
    );
  }
}
