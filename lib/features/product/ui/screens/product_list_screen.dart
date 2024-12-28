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
      body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
          itemCount: 20,
          itemBuilder: (context,index){
                return const FittedBox(child: ProductItemWidget());
          }),
    );
  }
}
