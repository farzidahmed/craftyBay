import 'package:flutter/material.dart';

class AppbarIconButton extends StatelessWidget {
  const AppbarIconButton({
    super.key, required this.icon, required this.ontap,
  });

  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        radius: 16,
        child: Icon(
          icon,
          size: 18,
          color: Colors.black45,
        ),
      ),
    );
  }
}
