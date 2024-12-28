import 'package:craftybay/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/category_item.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  static const String name = '/ category_list_screen';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (_, __) => _onpop(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Category"),
          leading: IconButton(
              onPressed: _onpop,
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 4),
              itemBuilder: (context, index) {
                return const FittedBox(child: CategoryItem());
              }),
        ),
      ),
    );
  }

  void _onpop() {
    Get.find<MainBottomNavController>().backto();
  }
}
