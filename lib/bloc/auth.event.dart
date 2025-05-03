part of 'auth.bloc.dart';
abstract class AuthEvent{
  const AuthEvent();
}

class AuthSendOtp extends AuthEvent{
  final String phonNumber;
  const AuthSendOtp({required this.phonNumber});
}

class VerifyOtpEvent extends AuthEvent{
  final String? code;
  final String? phonNumber;
  const VerifyOtpEvent({required this.code, required this.phonNumber});
}