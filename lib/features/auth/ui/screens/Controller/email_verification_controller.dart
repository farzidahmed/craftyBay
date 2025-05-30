import 'package:craftybay/app/urls.dart';
import 'package:craftybay/features/servies/network_caller/network_caller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class EmailVerificationController extends GetxController{

  bool _inProgress =false;

  bool get inProgress=> _inProgress;
  String? _errorMessage;
  String? get errorMessage=>_errorMessage;

  Future<bool > verifyEmail(String email)async{
    bool isSuccess=false;
    _inProgress = true;

    update();
     final NetworkResponse response =await Get.find<NetworkCaller>().postRequest(Urls.verifyEmailUrl(email));
     if(response.isSuccess){
       _errorMessage=null;
    isSuccess=true;
     }else{
      _errorMessage =response.errorMessage;
     }
     _inProgress=false;
     update();
     return isSuccess;
  }
}