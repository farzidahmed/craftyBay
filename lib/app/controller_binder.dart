import 'package:craftybay/features/auth/ui/screens/Controller/email_verification_controller.dart';
import 'package:craftybay/features/auth/ui/screens/email_verification_screen.dart';
import 'package:craftybay/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:craftybay/features/servies/network_caller/network_caller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainBottomNavController());
    Get.put(NetworkCaller() );
    Get.put( EmailVerificationController());
  }

}