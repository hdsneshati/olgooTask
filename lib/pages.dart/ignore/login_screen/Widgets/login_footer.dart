// part of '../LoginScreen.dart';

// class LoginFooter extends StatefulWidget {
//   final TextEditingController phoneNumber ;
//    const LoginFooter({required this.phoneNumber,super.key,});

//   @override
//   State<LoginFooter> createState() => _LoginFooterState();
// }

// class _LoginFooterState extends State<LoginFooter> {
  

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           // دکمه ارسال کد
//           BlocConsumer<AuthBloc, AuthState>(
//             listener: (context, state) {
//               if (state is AuthOtpSend) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => OtpVerificationScreen(
//                       phone:widget.phoneNumber,
//                     ),
//                   ),
//                 );
//               } else if (state is AuthFailure) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("خطا در ارسال کد")),
//                 );
//               }
//             },
//             builder: (context, state) {
//               return SizedBox(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     String phoneInput = widget.phoneNumber.text;

//                     // بررسی اعتبار شماره تلفن
//                     if (!PhoneNumberValidator.isPhoneNumberValid(phoneInput)) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                             content: Text('شماره موبایل نامعتبر است.')),
//                       );
//                       return;
//                     }

//                     String formattedPhoneNumber =
//                         PhoneNumberValidator.formatPhoneNumber(phoneInput);
//                     context
//                         .read<AuthBloc>()
//                         .add(AuthSendOtp(phonNumber: formattedPhoneNumber));
//                   },
//                   child: const Text('ارسال کد فعال‌سازی'),
//                   style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.white,
//                     backgroundColor:
//                         Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
//                   ),
//                 ),
//               );
//             },
//           ),

//           Padding(
//             padding: const EdgeInsets.only(bottom: 20.0, top: 15.0),
//             child: RichText(
//               text: TextSpan(
//                 style: TextStyle(
//                   fontSize: 13,
//                   color: Theme.of(context).colorScheme.onBackground,
//                 ),
//                 children: [
//                   const TextSpan(text: "با ورود به اپلیکیشن الگو بان، "),
//                   TextSpan(
//                     text: "شرایط حریم خصوصی و امنیتی",
//                     style:
//                         TextStyle(color: Theme.of(context).colorScheme.primary),
//                   ),
//                   const TextSpan(text: " را قبول کرده‌اید."),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

  
// }

