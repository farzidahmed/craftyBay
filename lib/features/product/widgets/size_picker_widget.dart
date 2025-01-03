import 'package:craftybay/app/app_colors.dart';
import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.size, required this.onSizeSelected});

  final List<String> size;
  final Function (String) onSizeSelected;

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: getSizeItems()),
    );
  }

  List<Widget> getSizeItems() {
    List<Widget> sizeItemList = [];
    for (String color in widget.size) {
      Widget item=getSizeItemWidget(
        name: color,
        onTap: () {
          _selectedSize = color;
          widget.onSizeSelected(_selectedSize!);
          setState(() {});
        },
        isSelectedColor: _selectedSize == color,
      );
      sizeItemList.add(item);
    }
    return sizeItemList;
  }

  Widget getSizeItemWidget(
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
            border: Border.all()),
        alignment: Alignment.center,
        child: Text(name,style:  TextStyle(color: isSelectedColor? Colors.white:null),),
      ),
    );
  }
}
