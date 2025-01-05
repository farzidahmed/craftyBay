import 'package:craftybay/app/app_colors.dart';
import 'package:craftybay/features/product/widgets/color_picker_widget.dart';
import 'package:craftybay/features/product/widgets/product_Qantity_inc_Dec_button.dart';
import 'package:craftybay/features/review/ui/screen/add_review_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_carousel_slider.dart';
import '../../widgets/size_picker_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key,   required this.productId});

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
            child: SingleChildScrollView(
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
                             _buildIncDecSec(themedata),
                            ProductQantityIncDecButton(onChnage: (int value) {
                            },),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Text("Color",style: themedata.titleMedium,),
                        const SizedBox(height: 8,),
                        _buildColorPickerWidget(),
                        const SizedBox(height: 16,),
                        Text("Size",style: themedata.titleMedium,),
                        const SizedBox(height: 8,),
                        _buildSizePickerWidget(),
                        const SizedBox(height: 16,),
                        Text("Description",style: themedata.titleMedium,),
                        const SizedBox(height: 8,),
                        const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,"
                            " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(color: Colors.grey),)
              
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          _buildAddToCartFunction(themedata)
        ],
      ),
    );
  }

  Widget _buildSizePickerWidget() {
    return SizePickerWidget(
      size: ["S", 'M', 'L', 'XL', 'XXL'],
      onSizeSelected: (String selectedcolor) {},
    );
  }

  Widget _buildColorPickerWidget() {
    return ColorPickerWidget(
      colors: ["Red", 'Green', 'Yellow', 'Pink'],
      onColorSelected: (String selectedcolor) {},
    );
  }

  Widget _buildIncDecSec(TextTheme themedata) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "Happy New Year Special Deal Save 30%",
            style: themedata.titleLarge,
          ),
          Row(
            children: [
              const Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
              ]),
              TextButton(
                onPressed: () {
                  print('tap this button');
                  Navigator.pushNamed(context, AddReviewScreen.name);
                },
                child: const Text("Review"),
              ),
              _buildFavIcon()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFavIcon() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.themColor,
      ),
      child: const Icon(
        Icons.favorite_border,
        color: Colors.white,
        size: 14,
      ),
    );
  }

  Widget _buildAddToCartFunction(TextTheme themedata) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topLeft:Radius.circular(24),topRight: Radius.circular(24)),
            color: AppColors.themColor.withOpacity(0.15),
          ),
          padding: const EdgeInsets.all(16),

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
