import 'package:craftybay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemData {
  static ThemeData get lightThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themColor,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColors.themColor),
        scaffoldBackgroundColor: Colors.white);
  }

  static ThemeData get darkThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themColor,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColors.themColor),
        brightness: Brightness.dark,

    );
  }
}
