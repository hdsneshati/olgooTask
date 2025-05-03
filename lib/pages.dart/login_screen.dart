import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/otp_verification_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//محلی است که کد UI و منطق تغییرات را می‌نویسیم.
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController PhonNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [

          header(),
        
          Padding(
            padding: const EdgeInsets.only(top: 100,left:  24 , right: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'تلفن همراه',
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                TextField(
                    controller: PhonNumberController,
                    keyboardType: TextInputType.number, //عددی شدن کیبورد
                    textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.person_outlined,
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.5),
                        ), // آیکون سمت راست

                        hintText: "مثلا09024365997",
                        hintStyle: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.5), // کمرنگ‌تر
                          fontSize: 14, // اختیاری
                          fontStyle: FontStyle.italic, // اختیاری برای زیبایی
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context)
                                .colorScheme
                                .onBackground
                                .withOpacity(0.5), // رنگ حاشیه
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ))),
              ],
            ),
          ),
          const Spacer(), // فضای خالی برای بردن متن به پایین
          SizedBox(
            width: double.infinity, // عرض دکمه به اندازه عرض صفحه
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
              if(state is AuthOtpSend){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpVerificationScreen(
                          phone: PhonNumberController.text
                        ),
                      ),
                    );
                    }
                     if (state is AuthFailure) {
                       ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("error")),
                       );
                      }
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    String input = PhonNumberController.text;

                    // بررسی تعداد رقم
                    if (input.length != 11 && input.length != 10) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('شماره موبایل باید 10 یا 11 رقمی باشد.')),
                      );
                      return;
                    }
                    // بررسی اینکه اگر 11 رقم هست حتماً با 0 شروع شده باشه
                    if (input.length == 11 && !input.startsWith('0')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('شماره 11 رقمی باید با 0 شروع شود.')),
                      );
                      return;
                    }
                    // حذف صفر اول اگر 11 رقمی بود
                    String finalPhone =
                        (input.length == 11) ? input.substring(1) : input;                  
                  
                   context.read<AuthBloc>().add(AuthSendOtp(phonNumber:finalPhone.toString()));
                 
                  
                  },
                  child: Text(
                    'ارسال کد فعال سازی',
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
                  ),
                );
              },
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 15.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.onBackground,
                  ), // استایل کلی متن
                  children: [
                    TextSpan(text: "ا ورود به اپلیکیشن الگو بان "),
                    TextSpan(
                      text:
                          "شرایط  حریم خصوصی و امنیتی", // کلمه‌ای که رنگ آن متفاوت است
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextSpan(text: " رنموافقیت کرده اید."),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Image.asset(
            'lib/assets/images/photo_۲۰۲۵-۰۳-۲۸_۰۳-۰۳-۳۳.jpg', // نمایش عکس از assets
            width: 100, // تنظیم عرض عکس
            height: 100, // تنظیم ارتفاع عکس
          ),
        ),
          Center(
            child: Text(
              'خوش برگشتی',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
              ),
            ),
          ),
          Center(
            child: Text('ورود به حساب کاربری',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.5),
                )),
          ),
         
      ],
    );
  }
}


