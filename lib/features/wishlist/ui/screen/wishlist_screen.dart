import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/ui/controllers/main_bottom_nav_controller.dart';
import '../../../common/widgets/product_item_widget.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});


  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
        onPopInvokedWithResult:(_,__) =>_onpop,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WishList"),
            leading: IconButton(
                onPressed: _onpop,
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childAspectRatio: 0.7),
              itemCount: 20,
              itemBuilder: (context,index){
                return const FittedBox(child: ProductItemWidget());
              }),
        ));
  }
  void _onpop() {
    Get.find<MainBottomNavController>().backto();
  }
}
