import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/app/app_theme_data.dart';
import 'package:craftybay/features/auth/ui/screens/complete_screen.dart';
import 'package:craftybay/features/auth/ui/screens/email_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //darkTheme: ThemeData(),
      initialRoute: '/',
      theme: AppThemData.lightThemeData,
      darkTheme: AppThemData.darkThemeData,
      themeMode: ThemeMode.light,
      routes: {

        '/': (context) => const SplashScreen(),
        EmailVerificationScreen.name: (context) => const EmailVerificationScreen(),
        OtplVerificationScreen.name: (context) => const OtplVerificationScreen(),
        CompleteScreen.name: (context) => const CompleteScreen(),
      },
    );
  }
}
