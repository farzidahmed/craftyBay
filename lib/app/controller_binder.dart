import 'package:craftybay/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainBottomNavScreen());
  }

}