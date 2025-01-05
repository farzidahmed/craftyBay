import 'package:craftybay/app/app_theme_data.dart';
import 'package:craftybay/app/controller_binder.dart';
import 'package:craftybay/features/auth/ui/screens/complete_screen.dart';
import 'package:craftybay/features/auth/ui/screens/email_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:craftybay/features/auth/ui/screens/splash_screen.dart';
import 'package:craftybay/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:craftybay/features/product/ui/screens/product_details_screen.dart';
import 'package:craftybay/features/review/ui/screen/add_review_screen.dart';
import 'package:craftybay/features/wishlist/ui/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/Category/ui/screen/Category_list_screen.dart';
import '../features/product/ui/screens/product_list_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData(),
      initialRoute: '/',
      theme: AppThemData.lightThemeData,
      darkTheme: AppThemData.darkThemeData,
      themeMode: ThemeMode.light,
      initialBinding: ControllerBinder(),

      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if(settings.name==SplashScreen.name){
          widget= const SplashScreen();
        }else if(settings.name==EmailVerificationScreen.name){
          widget =const EmailVerificationScreen();
        }else if(settings.name==OtplVerificationScreen.name){
          widget =const OtplVerificationScreen();
        }else if(settings.name==CompleteScreen.name){
          widget =const CompleteScreen();
        }else if(settings.name==MainBottomNavScreen.name){
          widget =const MainBottomNavScreen();
        }else if(settings.name==CategoryListScreen.name){
          widget =const CategoryListScreen();
        }
        else if(settings.name==ProductListScreen.name){
          String name= settings.arguments as String;
          widget =ProductListScreen(categoryname: name,);
        } 
        else if(settings.name==ProductDetailsScreen.name){
          int productId= settings.arguments as int;
          widget =ProductDetailsScreen( productId: productId,);
        }
        else if(settings.name==AddReviewScreen.name){
          widget=const AddReviewScreen();
        }
        return MaterialPageRoute(builder: (context){
            return widget;
          });
      },
    );
  }
}
