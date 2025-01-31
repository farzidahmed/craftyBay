import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key, required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.themColor),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.themColor),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.themColor),
          ),
          hintText: "Frist Name",
          fillColor: Colors.white,
          filled: true
      ),
    );
  }
}
