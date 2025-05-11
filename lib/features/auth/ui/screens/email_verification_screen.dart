import 'package:craftybay/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/emailverification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const app_logo_widget(),
                const SizedBox(
                  height: 24,
                ),
                Text("WellCome Back",
                    style: Theme.of(context).textTheme.titleLarge),
                Text("Please Enter your email address",
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

                    },
                    child: const Text("Next"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFiled() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _emailTeController,
      decoration: const InputDecoration(
        hintText: "Email address",
      ),
      validator: (String? value) {
        if (value?.trim().isEmpty ?? true) {
          return "Enter a email ";
        }
        if (EmailValidator.validate(value!)==false) {
          return "Enter a valid email address";
        }
        return null;
      },
    );
  }

  void _validation() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, OtplVerificationScreen.name);
    }
  }
}
