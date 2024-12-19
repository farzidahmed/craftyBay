import 'package:craftybay/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  static const String name = '/completescreen';

  @override
  State<CompleteScreen> createState() =>
      _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _shipingaddress = TextEditingController();
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
                  height: 60,
                ),
                const app_logo_widget(),
                const SizedBox(
                  height: 24,
                ),
                Text("Complete Profile",
                    style: Theme.of(context).textTheme.titleLarge),
                Text("Get started with use with your profile",
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
    return Column(children: [
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _firstnameController,
        decoration: const InputDecoration(
          hintText: "First Name",
        ),
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return "Enter your first name ";
          }
          return null;
        },
      ),
      SizedBox(height: 12,),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _lastnameController,
        decoration: const InputDecoration(
          hintText: "Last Name",
        ),
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return "Enter your Last Name ";
          }
          return null;
        },
      ),
      SizedBox(height: 12,),
      TextFormField(
        maxLength: 11,
        keyboardType: TextInputType.number,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _mobileController,
        decoration: const InputDecoration(
          hintText: "Mobile",
        ),
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return "Enter your mobile number ";
          }
          if (value!.length< 11) {
            return "Mobile number must be 11 digits";
          }

          return null;
        },
      ),
      SizedBox(height: 12,),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _city,
        decoration: const InputDecoration(
          hintText: "City",
        ),
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return "Enter your City ";
          }
          return null;
        },
      ),
      SizedBox(height: 12,),
      TextFormField(maxLines: 5,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _firstnameController,
        decoration: const InputDecoration(
          hintText: "Shipping Address",
        ),
        validator: (String? value) {
          if (value?.trim().isEmpty ?? true) {
            return "Shipping Address ";
          }
          return null;
        },
      ),
    ]);
  }

  void _validation() {
    if (_formkey.currentState!.validate()) {}
  }
}
