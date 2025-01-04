import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets.dart';
import '../../../product/widgets/product_Qantity_inc_Dec_button.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context).textTheme;

    return Card(
      elevation: 3,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
        child: Row(
          children: [
            Image.asset(
              Assetspath.dummyImagePng,
              width: 90,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Nike shoe - A456663 New year deal",
                                style: themedata.bodyLarge
                                    ?.copyWith(
                                    overflow: TextOverflow
                                        .ellipsis),
                              ),
                              const Row(
                                children: [
                                  Text('Color:Red'),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text('Size:Xl')
                                ],
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                                Icons.delete_forever_outlined))
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ 100',
                            style: themedata.titleMedium
                                ?.copyWith(
                                color:
                                AppColors.themColor)),
                        ProductQantityIncDecButton(
                            onChnage: (int noOfItem) {})
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}