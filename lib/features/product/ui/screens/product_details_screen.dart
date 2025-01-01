import 'package:craftybay/features/product/widgets/product_Qantity_inc_Dec_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_carousel_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

final int productId;

  static const String name='/product/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product details'),
      ),
      body: const Column(
        children: [
          Product_Image_Carousel_Slider(),
          ProductQantityIncDecButton()
        ],
      ),
    );
  }
}
