import 'package:craftybay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemData {
  static ThemeData get lightThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themColor,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColors.themColor),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300
        ),
        fillColor: Colors.white,
        filled: true,
        contentPadding:
        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themColor),),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themColor),),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themColor),),

      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themColor,
            foregroundColor: Colors.white,
            fixedSize:const Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            )
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.themColor
        )
      )
    );
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
