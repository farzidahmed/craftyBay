import 'package:craftybay/app/app_colors.dart';
import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key, required this.colors, required this.onColorSelected});

  final List<String> colors;
  final Function (String) onColorSelected;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  String? _selectedCOlor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: getColorItems()),
    );
  }

  List<Widget> getColorItems() {
    List<Widget> colorList = [];
    for (String color in widget.colors) {
      Widget item=getColorItemWidget(
        name: color,
        onTap: () {
          _selectedCOlor = color;
          widget.onColorSelected(_selectedCOlor!);
          setState(() {});
        },
        isSelectedColor: _selectedCOlor == color,
      );
      colorList.add(item);
    }
    return colorList;
  }

  Widget getColorItemWidget(
      {required String name,
      required VoidCallback onTap,
      required bool isSelectedColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            color: isSelectedColor ? AppColors.themColor : Colors.transparent,
            border: Border.all(),
            borderRadius: BorderRadius.circular(16)
        ),
        alignment: Alignment.center,
        child: Text(name,style:  TextStyle(color: isSelectedColor? Colors.white:null),),
      ),
    );
  }
}
