import 'package:craftybay/app/app_colors.dart';
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
    final themedata=Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product details'),
      ),
      body:  Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const Product_Image_Carousel_Slider(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Expanded(
                             child: Column(

                              children: [
                              Text("Happy New Year Special Deal Save 30%",style:themedata.titleLarge,),
                                Row(
                                  children: [
                                    const Row(children: [
                                      Icon(Icons.star,color: Colors.amber,size: 20,),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      ),

                                    ]),
                                    TextButton(onPressed: (){},
                                        child: const Text("Review"),),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColors.themColor,
                                      ),
                                      child: const Icon(Icons.favorite_border,color: Colors.white,size: 14,),
                                    )
                                  ],
                                ),
                              ],
                             ),
                           ),
                          ProductQantityIncDecButton(onChnage: (int value) {
                          },),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Text("Color",style: themedata.titleMedium,),
                      const SizedBox(height: 8,),
                    ],
                  ),
                )
              ],
            ),
          ),
          _buildAddToCartFunction(themedata)
        ],
      ),
    );
  }

  Widget _buildAddToCartFunction(TextTheme themedata) {
    return Container(
          padding: const EdgeInsets.all(16),
          color: AppColors.themColor.withOpacity(0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Column(
                children: [
                  Text("Price",style:themedata.titleSmall ,),
                  const Text("\$100",style:TextStyle(fontWeight: FontWeight.w600,color: AppColors.themColor,fontSize: 20)),
                ],
              ),
              SizedBox(
                width: 120,
                child: ElevatedButton(onPressed: (){},
                    child:  const Text("Add To Cart")),
              )
            ],
          ),
        );
  }
}
