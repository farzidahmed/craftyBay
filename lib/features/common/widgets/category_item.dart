import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.themColor.withOpacity(0.14),
              borderRadius: BorderRadius.circular(8)
          ),
          child: const Icon(
            Icons.computer_outlined,
            color: AppColors.themColor,
            size: 48,
          ),
        ),
        const SizedBox(height: 4,),
        const Text("Computer",style: TextStyle(color: AppColors.themColor,fontSize: 16,letterSpacing: 1),),
      ],
    );
  }
}
