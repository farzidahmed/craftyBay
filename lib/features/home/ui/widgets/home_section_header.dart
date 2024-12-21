import 'package:flutter/material.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key, required this.title, required this.ontap,
  });
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        TextButton(onPressed: ontap,
            child:const Text('View All'))
      ],
    );
  }
}
