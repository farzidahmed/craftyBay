import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/app/app_theme_data.dart';
import 'package:craftybay/app/controller_binder.dart';
import 'package:craftybay/features/auth/ui/screens/complete_screen.dart';
import 'package:craftybay/features/auth/ui/screens/email_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:craftybay/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/Category/ui/screen/Category_list_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData(),
      initialRoute: '/',
      theme: AppThemData.lightThemeData,
      darkTheme: AppThemData.darkThemeData,
      themeMode: ThemeMode.light,
      initialBinding: ControllerBinder(),
      routes: {

        '/': (context) => const SplashScreen(),
        EmailVerificationScreen.name: (context) => const EmailVerificationScreen(),
        OtplVerificationScreen.name: (context) => const OtplVerificationScreen(),
        CompleteScreen.name: (context) => const CompleteScreen(),
        MainBottomNavScreen.name: (context) => const MainBottomNavScreen(),
        CategoryListScreen.name: (context) => const CategoryListScreen(),
      },
    );
  }
}
