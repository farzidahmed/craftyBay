import 'package:craftybay/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/search_bar.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});
  static const String name='/add-review-screen';
  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  TextEditingController firstnameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  PopScope(
      canPop: true,
      onPopInvokedWithResult: (_,__)=>_onpop,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Review'),
          leading: IconButton(onPressed: ()=>_onpop,
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Searchbar(controller:firstnameController ,),
            )
          ],
        ),
      ),
    );
  }
  void _onpop() {
    Get.find<MainBottomNavController>().backto();
  }
}
