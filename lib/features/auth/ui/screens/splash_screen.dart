import 'package:craftybay/app/assets.dart';
import 'package:craftybay/features/auth/ui/screens/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _movetonextscreen();
  }
Future <void> _movetonextscreen()async{
  await Future.delayed(const Duration(seconds: 2));
  Navigator.pushNamed(context, EmailVerificationScreen.name);
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
             app_logo_widget(),
              Spacer(),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}

class app_logo_widget extends StatelessWidget {
  const app_logo_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Assetspath.applogo,
      width: 100,);
  }
}
