import 'package:craftybay/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:craftybay/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  static const String name='/bottomnavscreen';

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  List<Widget> _screens=const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (bottomNavController) {
        return Scaffold(
          body: _screens[bottomNavController.selectedIndex],
          bottomNavigationBar: NavigationBar(
              selectedIndex: bottomNavController.selectedIndex,
              onDestinationSelected: bottomNavController.changeindex,
              destinations: [
            const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            const NavigationDestination(
                icon: Icon(Icons.category_outlined), label: "Categories"),
            const NavigationDestination(
                icon: Icon(Icons.shopping_cart_sharp), label: "Cart"),
            const NavigationDestination(
                icon: Icon(Icons.favorite_border), label: "WishList"),
          ]),
        );
      }
    );
  }
}
