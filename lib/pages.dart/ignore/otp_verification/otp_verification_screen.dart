// import 'package:flutter/material.dart';
// import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
// import 'package:flutter_application_ui_olgoo/pages.dart/screens/dashboard_screen.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'dart:async';
// import '../user_registration/user_registration_screen.dart';
// part './Widgets/edit_number.dart';
// part './Widgets/header.dart';
// part './Widgets/pin_code_input.dart';
// part './Widgets/verify_button.dart';
// class OtpVerificationScreen extends StatefulWidget {
//  var phone;
//    OtpVerificationScreen({required this.phone});

//   @override
//   State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
// }

// class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
//    int _timeLeft = 60; // ثانیه‌های باقی‌مانده
//   Timer? _timer;
//   String enteredCode = "";
//   @override
//   void initState() {
//     super.initState();
//     _startTimer(); // شروع تایمر هنگام اجرای صفحه
//   }

//   void _startTimer() {
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       if (_timeLeft > 0) {
//         setState(() {
//           _timeLeft--;
//         });
//       } else {
//         _timer?.cancel(); // وقتی به صفر رسید، تایمر متوقف میشه
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel(); // وقتی صفحه بسته شد، تایمر رو ببند
//     super.dispose();
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Header(phone: widget.phone),
//         EditNumber(phone: widget.phone),
//         PinCodeInput(),
//       const  Spacer(),
//         VerifyButton(phone: widget.phone),
//       ],
//     );
//   }
// }