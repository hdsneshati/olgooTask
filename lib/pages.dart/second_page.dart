import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/third_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';

class SecondPage extends StatefulWidget {
  var phon;

  SecondPage({this.phon}); 
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _timeLeft = 60; // ثانیه‌های باقی‌مانده
  Timer? _timer;


   @override
  void initState() {
    super.initState();
    _startTimer(); // شروع تایمر هنگام اجرای صفحه
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        setState(() {
          _timeLeft--;
        });
      } else {
        _timer?.cancel(); // وقتی به صفر رسید، تایمر متوقف میشه
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // وقتی صفحه بسته شد، تایمر رو ببند
    super.dispose();
  }

 // دریافت متن از صفحه او
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(),
         body: Column(
            children: [
              Icon(Icons.textsms_outlined,  color: Theme.of(context).colorScheme.primary,size: 100,),
              Text('   کد فعال سازی به${widget.phon }ارسال شد' ,style: TextStyle(color:Theme.of(context).colorScheme.onBackground,fontWeight: FontWeight.bold,),),
             Center(
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // برای وسط‌چین کردن عناصر در Row
                 children: [
                   Icon(Icons.edit_square,  color: Theme.of(context).colorScheme.primary,),
                   Text('ویرایش شماره',style: TextStyle(color: Theme.of(context).colorScheme.primary,),textAlign: TextAlign.center,)
                 ],
               ),
             ), // آیکون سمت راست
              Padding(
                padding: const EdgeInsets.only(top:100,bottom: 25,right: 15,left: 15),
                child: PinCodeTextField(
                  appContext: context,///گر از ویجتی استفاده می‌کنی که BuildContext به صورت مستقیم درش نیست، مثلاً در متد جداگانه‌ای هستی، باید اون context رو دستی از بالا بفرستی و به appContext بدی.
                  length: 5, // تعداد خانه‌ها
                  obscureText: false, // اگر بخوای متن رمز بشه، true بذار
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.scale,
                  pinTheme: PinTheme(
                     shape: PinCodeFieldShape.box,
                     borderRadius: BorderRadius.circular(10),
                     fieldHeight: 50,
                     fieldWidth: 50,
                     activeColor:  Theme.of(context).colorScheme.primary,         // حاشیه وقتی فیلد فعال است
                     selectedColor:  Theme.of(context).colorScheme.primary,        // حاشیه وقتی انتخاب شده
                     inactiveColor:  Theme.of(context).colorScheme.onBackground.withOpacity(0.5),        // حاشیه وقتی غیرفعاله
                         
                    activeFillColor:  Colors.blue.shade50,    // رنگ پس‌زمینه فیلد فعال
                    selectedFillColor: Colors.blue.shade50,  // رنگ پس‌زمینه فیلد انتخاب شده
                    inactiveFillColor: Colors.grey.shade200, // رنگ پس‌زمینه فیلد غیرفعال
                   ),
                    textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5), // رنگ متن را اینجا تنظیم می‌کنید
                          // اندازه فونت را نیز می‌توانید تنظیم کنید
                          fontWeight: FontWeight.bold, // می‌توانید پررنگ کردن را با این ویژگی انجام دهید
                         ),
                  //animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("کد وارد شده: $v");
                  },
                   onChanged: (value) {
                     print("در حال وارد کردن: $value");
                   },
                 ),
              ),
              RichText(
                text: _timeLeft > 0
                ? TextSpan(
                text: 'تا ارسال مجدد کد: ',
                style: TextStyle(color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), fontSize: 16),
            children: [
              TextSpan(
                text: '${_timeLeft.toString()} ثانیه',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                  
                ),
              ),
            ],
          )
        : TextSpan(
            text: 'کدی دریافت نکردی؟ ',
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), fontSize: 16),
            children: [
              TextSpan(
                text: 'ارسال مجدد',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
            Spacer(), // فضای خالی برای بردن متن به پایین       
              SizedBox(
                width: double.infinity, // عرض دکمه به اندازه عرض صفحه
                 child: ElevatedButton(
                  onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ThirdPage(),)
                  ), 
                  child:Text('ورود',),
                  style: ElevatedButton.styleFrom(
                     foregroundColor: Colors.white, 
                     backgroundColor:  Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
                    ),
                  ),
               ),   
               
            ],
           ),
         
      
    );
  }
}