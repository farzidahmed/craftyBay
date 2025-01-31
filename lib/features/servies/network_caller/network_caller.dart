import 'dart:convert';

import 'package:http/http.dart';
import 'package:logger/logger.dart';

class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  final dynamic responseData;
  final String errorMessage;

  NetworkResponse(
      {required this.isSuccess,
      required this.statusCode,
       this.responseData,
       this.errorMessage='Something went wrong'});
}

class NetworkCaller{
  final _logger=Logger();
  Future<NetworkResponse> getRequest(String url)async{
   try{

     Uri uri = Uri.parse(url);
     _logRequest(url,);
      Response response = await get(uri);
      if (response.statusCode == 200) {
        _logResponse(url, response.statusCode, response.headers, response.body);
        final decodedMessage= jsonDecode(response.body);
      return  NetworkResponse(isSuccess:false , statusCode:-1,responseData: decodedMessage );
      } else {
      return    NetworkResponse(isSuccess:false , statusCode:response.statusCode  );
      }
    }catch(e){
     _logResponse(url,-1, null, '',e.toString());

     return NetworkResponse(isSuccess:false , statusCode:-1,errorMessage: e.toString() );
   }
  }
  //post request
  Future<NetworkResponse> postRequest(String url, {Map<String, dynamic>? body})async{
   try{

     Uri uri = Uri.parse(url);

     Map<String,String>headers={
       'content-Type':"application/json"
     };
     _logRequest(url,);
      Response response = await post(uri,headers: headers,body: jsonEncode(body));
      if (response.statusCode == 200) {
        _logResponse(url, response.statusCode, response.headers, response.body);
        final decodedMessage= jsonDecode(response.body);
      return  NetworkResponse(isSuccess:false , statusCode:-1,responseData: decodedMessage );
      } else {
      return  NetworkResponse(isSuccess:false , statusCode:response.statusCode  );
      }
    }catch(e){
     _logResponse(url,-1, null, '',e.toString());

     return NetworkResponse(isSuccess:false , statusCode:-1,errorMessage: e.toString() );
   }
  }
  void _logRequest(String url,[Map<String,dynamic>?body,Map<String,dynamic>?headers]){
    _logger.i("Url=>$url\n  Body=>$body\n Headers=>$headers",);
  }
  void _logResponse(String url,int status,Map<String,String>?headers,String body,[String? errormeassge]){
    if ( errormeassge!=null){
      _logger.e("Url=>$url\n  ErrorMessage=>$errormeassge",);
    }else{
      _logger.i("Url=>$url\n  Headers=>$headers\n StatusCode=>$status\n Body=>$body",);
    }

  }
}
