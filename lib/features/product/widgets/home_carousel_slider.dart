import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class Product_Image_Carousel_Slider extends StatefulWidget {
  const Product_Image_Carousel_Slider({
    super.key,
  });

  @override
  State<Product_Image_Carousel_Slider> createState() => _Product_Image_Carousel_SliderState();
}

class _Product_Image_Carousel_SliderState extends State<Product_Image_Carousel_Slider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 240,
            viewportFraction: 0.99,
            onPageChanged: (currentIndex, reason) {
              _selectedIndex.value = currentIndex;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration:  BoxDecoration(
                        color: Colors.grey.shade300,
                        ),
                    alignment: Alignment.center,
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16,),
        Positioned(
        bottom: 8,
          right: 0,
          left: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, value,_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i=0;i<5;i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: value==i?AppColors.themColor:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)
                      ),
                    )
                ],
              );
            }
          ),
        )

      ],
    );

  }
}
