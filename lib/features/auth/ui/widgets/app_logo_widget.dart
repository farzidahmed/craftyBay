import 'package:craftybay/app/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
