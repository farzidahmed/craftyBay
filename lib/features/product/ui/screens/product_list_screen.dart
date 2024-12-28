import 'package:flutter/material.dart';

import '../../../common/widgets/product_item_widget.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.categoryname});

  static const String name='/product/product-list-by-category';

  final String categoryname;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.categoryname),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 0.7),
            itemCount: 20,
            itemBuilder: (context,index){
                  return const FittedBox(child: ProductItemWidget());
            }),
      ),
    );
  }
}
