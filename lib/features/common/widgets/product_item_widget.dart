import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                color: AppColors.themColor.withOpacity(0.14),
              ),
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/nike_shoe.png',
                width: 140,
                height: 90,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Nike shoe lasetest edition -RF45Gh',
                    maxLines: 1,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black45),
                  ),
                  const SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$ 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.themColor),
                      ),
                      const Wrap(children: [
                        Icon(Icons.star,color: Colors.amber,size: 20,),
                        Text(
                          "4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.themColor),
                        ),

                      ]),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.themColor,
                        ),
                        child: Icon(Icons.favorite_border,color: Colors.white,size: 14,),
                      )
                    ],
                  ),
                  const SizedBox(height: 4,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
