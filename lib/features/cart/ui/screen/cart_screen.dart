
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/app_colors.dart';
import '../../../common/ui/controllers/main_bottom_nav_controller.dart';
import '../widgets/cart_prodct_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context).textTheme;
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (_, __) => _onpop,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Cart List'),
          ),
          body: Column(

            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return CartProductItem();

                      })),
              _buildAddToCheckOutFunction(themedata),
            ],
          ),
        ));
  }

  Widget _buildAddToCheckOutFunction(TextTheme themedata) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        color: AppColors.themColor.withOpacity(0.15),
      ),
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Total Price",
                style: themedata.titleSmall,
              ),
              const Text("\$100000",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.themColor,
                      fontSize: 20)),
            ],
          ),
          SizedBox(
            width: 120,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("CheckOut")),
          )
        ],
      ),
    );
  }

  void _onpop() {
    Get.find<MainBottomNavController>().backto();
  }
}


