import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppInputBorders {
  static const border = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(AppConstants.inputRadius),
    ),
    borderSide: BorderSide(color: AppColors.borderColor, width: 1),
  );
}
