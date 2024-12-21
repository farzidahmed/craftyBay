import 'package:flutter/material.dart';

import '../../../common/widgets/category_item.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});
      static const String name='/ category_list_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 4),
            itemBuilder: (context,index){
              return const FittedBox(child: CategoryItem());
            }),
      ),
    );
  }
}
