import 'dart:async';

import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/app/app_constent.dart';
import 'package:craftybay/features/auth/ui/screens/complete_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

class OtplVerificationScreen extends StatefulWidget {
  const OtplVerificationScreen({super.key});

  static const String name = '/otpverification';

  @override
  State<OtplVerificationScreen> createState() => _OtplVerificationScreenState();
}

class _OtplVerificationScreenState extends State<OtplVerificationScreen> {
  TextEditingController _OtpTeController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  RxInt _remainingtime = AppConstent.resentOtptimeOut.obs;
  late Timer timer;
  RxBool _enableResentCodeButon = false.obs;

  //int remaingtime =10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startresentcodesent();
  }

  void _startresentcodesent() {
    _enableResentCodeButon.value = false;
    _remainingtime.value = AppConstent.resentOtptimeOut;
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      _remainingtime.value--;
      if (_remainingtime == 0) {
        t.cancel();
        _enableResentCodeButon.value = true;
      }
    });
  }

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
                ElevatedButton(
                    onPressed: () {
                      _validation();
                      Navigator.pushNamed(context, CompleteScreen.name);
                    },
                    child: const Text("Next")),
                const SizedBox(
                  height: 24,
                ),
                Obx(() => Visibility(
                      visible: !_enableResentCodeButon.value,
                      child: RichText(
                        text: TextSpan(
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                            text: "The code will expire in ",
                            children: [
                              TextSpan(
                                text: "${_remainingtime} s",
                                style:
                                    const TextStyle(color: AppColors.themColor),
                              )
                            ]),
                      ),
                    )),
                Obx(() => Visibility(
                      visible: _enableResentCodeButon.value,
                      child: TextButton(
                          onPressed: () {
                            _startresentcodesent();
                          },
                          child: const Text("Resent code")),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFiled() {
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
            borderRadius: BorderRadius.circular(8)),
        keyboardType: TextInputType.number,
        controller: _OtpTeController);
  }

  void _validation() {
    if (_formkey.currentState!.validate()) {}
  }
}
