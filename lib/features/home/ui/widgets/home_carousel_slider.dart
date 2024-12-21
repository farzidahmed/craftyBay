import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class Home_Carousel_Slider extends StatefulWidget {
  const Home_Carousel_Slider({
    super.key,
  });

  @override
  State<Home_Carousel_Slider> createState() => _Home_Carousel_SliderState();
}

class _Home_Carousel_SliderState extends State<Home_Carousel_Slider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.9,
            onPageChanged: (currentIndex, reason) {
              _selectedIndex.value = currentIndex;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: AppColors.themColor,
                        borderRadius: BorderRadius.circular(16)),
                    alignment: Alignment.center,
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16,),
        ValueListenableBuilder(
          valueListenable: _selectedIndex,
          builder: (context, value,_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0;i<5;i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                  width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: value==i?AppColors.themColor: Colors.transparent ,
                    borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)
                    ),
                  )
              ],
            );
          }
        )

      ],
    );

  }
}
