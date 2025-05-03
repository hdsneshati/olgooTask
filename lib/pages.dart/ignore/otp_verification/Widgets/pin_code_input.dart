// part of'../otp_verification_screen.dart';
// class PinCodeInput extends StatefulWidget {
  
//    PinCodeInput({super.key});

//   @override
//   State<PinCodeInput> createState() => _PinCodeInputState();
// }

// class _PinCodeInputState extends State<PinCodeInput> {
//   String enteredCode ="";
//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//             padding: const EdgeInsets.only(
//                 top: 100, bottom: 25, right: 15, left: 15),
//             child: PinCodeTextField(
//               appContext: context,

//               ///گر از ویجتی استفاده می‌کنی که BuildContext به صورت مستقیم درش نیست، مثلاً در متد جداگانه‌ای هستی، باید اون context رو دستی از بالا بفرستی و به appContext بدی.
//               length: 5, // تعداد خانه‌ها
//               obscureText: false, // اگر بخوای متن رمز بشه، true بذار
//               keyboardType: TextInputType.number,
//               animationType: AnimationType.scale,
//               pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(10),
//                 fieldHeight: 50,
//                 fieldWidth: 50,
//                 activeColor: Theme.of(context)
//                     .colorScheme
//                     .primary, // حاشیه وقتی فیلد فعال است
//                 selectedColor: Theme.of(context)
//                     .colorScheme
//                     .primary, // حاشیه وقتی انتخاب شده
//                 inactiveColor: Theme.of(context)
//                     .colorScheme
//                     .onBackground
//                     .withOpacity(0.5), // حاشیه وقتی غیرفعاله

//                 activeFillColor: Colors.blue.shade50, // رنگ پس‌زمینه فیلد فعال
//                 selectedFillColor:
//                     Colors.blue.shade50, // رنگ پس‌زمینه فیلد انتخاب شده
//                 inactiveFillColor:
//                     Colors.grey.shade200, // رنگ پس‌زمینه فیلد غیرفعال
//               ),
//               textStyle: TextStyle(
//                 color: Colors.black
//                     .withOpacity(0.5), // رنگ متن را اینجا تنظیم می‌کنید
//                 // اندازه فونت را نیز می‌توانید تنظیم کنید
//                 fontWeight: FontWeight
//                     .bold, // می‌توانید پررنگ کردن را با این ویژگی انجام دهید
//               ),
//               //animationDuration: Duration(milliseconds: 300),
//               enableActiveFill: true,
//               onCompleted: (v) {
//                 print("کد وارد شده: $v");
//               },
//               onChanged: (value) {
//                 setState(() {
//                 enteredCode = value;
//                  });
//               },
//             ),
//           );
//   }
// }