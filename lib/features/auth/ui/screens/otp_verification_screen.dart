import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtplVerificationScreen extends StatefulWidget {
  const OtplVerificationScreen({super.key});

  static const String name = '/otpverification';

  @override
  State<OtplVerificationScreen> createState() =>
      _OtplVerificationScreenState();
}

class _OtplVerificationScreenState extends State<OtplVerificationScreen> {
  TextEditingController _OtpTeController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const app_logo_widget(),
                const SizedBox(
                  height: 24,
                ),
                Text("Enter Otp Code",
                    style: Theme.of(context).textTheme.titleLarge),
                Text("A 4 digit otp has been sent",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w300)),
                const SizedBox(
                  height: 24,
                ),
                _buildTextFiled(),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(onPressed: () {_validation();}, child: const Text("Next")),
                const SizedBox(height: 24,),
                RichText(text: const TextSpan(
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  text: "The code will expire in ",
                  children: [
                    TextSpan(
                      text: "120 s ",
                      style: TextStyle(color: AppColors.themColor),
                    )
                  ]
                ),),
                TextButton(onPressed: (){},
                    child: Text("Resent code"))

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget  _buildTextFiled() {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      animationDuration: const Duration(milliseconds: 300),
      appContext: context,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        activeColor: AppColors.themColor,
        inactiveColor: AppColors.themColor,
        borderRadius: BorderRadius.circular(8)
      ),
      keyboardType: TextInputType.number,
      controller: _OtpTeController
    );
  }
  void _validation(){
    if(_formkey.currentState!.validate()){}
  }
}
