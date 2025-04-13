part of 'auth.bloc.dart';

abstract class AuthState {
  const AuthState();
}
class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}
class AuthOtpSend extends AuthState {}
class AuthOtpVerified extends AuthState {
   late UserModel userModel;
   AuthOtpVerified(this.userModel);
}
class AuthFailure extends AuthState {
  final String? error;
  const AuthFailure ({required this.error});
}

