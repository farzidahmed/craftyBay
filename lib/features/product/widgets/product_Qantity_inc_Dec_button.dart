import 'package:craftybay/app/app_colors.dart';
import 'package:flutter/material.dart';

class ProductQantityIncDecButton extends StatefulWidget {
  const ProductQantityIncDecButton({super.key, required this.onChnage});


  final Function(int) onChnage;

  @override
  State<ProductQantityIncDecButton> createState() => _ProductQantityIncDecButtonState();
}

class _ProductQantityIncDecButtonState extends State<ProductQantityIncDecButton> {

  int count=1;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        _builIncButton(icon: Icons.remove,ontap: (){
          if(count>1){
            count --;
            widget.onChnage(count);
            setState(() {
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("${count}",style: TextStyle(fontSize: 18),),
        ),
        _builIncButton(icon: Icons.add,ontap: (){
          if(count<20){
            count ++;
            widget.onChnage(count);
            setState(() {
            });
          }
        }),
      ],
    );
  }

  Widget _builIncButton({required IconData icon,required VoidCallback ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.themColor,
            borderRadius: BorderRadius.circular(4)
          ),
          alignment: Alignment.center,
          child: Icon(icon,color: Colors.white,),
        ),
    );
  }
}
