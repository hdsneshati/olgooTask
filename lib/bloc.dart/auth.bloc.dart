import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_ui_olgoo/models/user.model.dart';
import 'package:flutter_application_ui_olgoo/network/api_service.dart';

part 'auth.event.dart';
part 'auth.state.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  NetworkHandler network=NetworkHandler();
  AuthBloc():super(AuthInitial()){

  on<AuthSendOtp>((event, emit) async{
      emit(AuthLoading());

      try{
         Response response = await network.sendOtp(event.phonNumber);
         if(response.statusCode==201){
          emit(AuthOtpSend());
         }
         else{
          emit(AuthFailure(error:response.statusMessage??'error'));
         }
      }catch(e){
        print(e);
            print('error');
      }

    });
 
 
  on<VerifyOtpEvent>((event, emit) async{
      emit(AuthLoading());
       
      try{
       
         Response response = await network.verfiyOtp();
         var authResponse = UserModel.fromJson(response.extra);
         if(response.statusCode==201){
          emit(AuthOtpVerified(authResponse));
         }
         else{
          emit(AuthFailure(error:response.statusMessage??'error'));
         }
      }catch(e){
        
            print('error');
      }

    });
 
  }
}