import 'package:craftybay/app/assets.dart';
import 'package:craftybay/features/home/ui/widgets/app_bar_icon_button.dart';
import 'package:craftybay/features/home/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/app_colors.dart';
import '../widgets/category_item.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../widgets/product_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Searchbar(
                controller: _searchditingcontroller,
              ),
              const SizedBox(
                height: 16,
              ),
              const Home_Carousel_Slider(),
              const SizedBox(
                height: 16,
              ),
              HomeSectionHeader(
                title: 'Category',
                ontap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryList(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //Popular product list
              HomeSectionHeader(
                title: 'Popular',
                ontap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 16,
              ),
              //Special Product list
              HomeSectionHeader(
                title: 'Special',
                ontap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              //New ProductList
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 16

              ),
              HomeSectionHeader(
                title: 'New Product',
                ontap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getCategoryList() {
    List<Widget> categoryList = [];
    for (int i = 0; i < 5; i++) {
      categoryList.add(const Padding(
        padding: EdgeInsets.only(right: 8),
        child: CategoryItem(),
      ));
    }
    return categoryList;
  }
  List<Widget> _getProductList() {
    List<Widget> ProductList = [];
    for (int i = 0; i < 5; i++) {
      ProductList.add(const Padding(
        padding: EdgeInsets.only(right: 8),
        child:  ProductItemWidget(),
      ));
    }
    return ProductList;
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(Assetspath.navbarapplogo),
      actions: [
        AppbarIconButton(
          icon: (Icons.person_2_outlined),
          ontap: () {},
        ),
        const SizedBox(
          width: 6,
        ),
        AppbarIconButton(
          icon: (Icons.phone_enabled),
          ontap: () {},
        ),
        const SizedBox(
          width: 6,
        ),
        AppbarIconButton(
          icon: (Icons.notification_add_outlined),
          ontap: () {},
        ),
      ],
    );
  }
}

