import 'package:craftybay/app/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class app_logo_widget extends StatelessWidget {
  const app_logo_widget({
    super.key, this.width, this.height, this.boxfit,
  });

  final double? width;
  final double? height;
  final BoxFit? boxfit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assetspath.applogo,
      width:width?? 100,
      height:height?? 100,
      fit:boxfit?? BoxFit.scaleDown,

    );
  }
}
