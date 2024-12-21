import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/app/assets.dart';
import 'package:craftybay/features/home/ui/widgets/app_bar_icon_button.dart';
import 'package:craftybay/features/home/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/home_carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchditingcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          SizedBox(height: 16,),
          Searchbar(controller: _searchditingcontroller,),
          Home_Carousel_Slider()
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(Assetspath.navbarapplogo),
      actions: [
        AppbarIconButton(
          icon: (Icons.person_2_outlined),
          ontap: () {},
        ),
        const SizedBox(width: 6,),
        AppbarIconButton(
          icon: (Icons.phone_enabled),
          ontap: () {},
        ),
        const SizedBox(width: 6,),
        AppbarIconButton(
          icon: (Icons.notification_add_outlined),
          ontap: () {},
        ),
      ],
    );
  }
}



