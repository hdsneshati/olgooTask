import 'package:dio/dio.dart';

class NetworkHandler{
  static const String baseurl = "https://api2-dev.olgooapp.ir";
  sendOtp(String phonNumber) async{
    
    String url = "https://api2.olgooapp.ir/otp/$phonNumber";
    Dio dio =Dio();

    try{
      Response response =await dio.post(url);
      if(response.statusCode == 201){
        return response;
      } 
    }on DioException catch(e){
      print("error");
    }
  }
  verfiyOtp({required String phonenumber, required String code})async{
    String url="https://api2.olgooapp.ir/otpVerify/";
    Dio dio =Dio();
     try{
      Response response =await dio.post(
        url,
        data: {"phoneNumber": phonenumber,
               "otp": code,
              },
              );
      if(response.statusCode == 201){
        return response;
      } 
      if(response.statusCode == 404){
        print("not found");
      }
      if(response.statusCode == 500){
       print("Internal server error");
      }
    }on DioException catch(e){
      print("error");
    }
  }
}