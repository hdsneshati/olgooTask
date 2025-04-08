import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}
//محلی است که کد UI و منطق تغییرات را می‌نویسیم.
class _FirstPageState extends State<FirstPage> {
  TextEditingController PhonNumberController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background,
      
      body: Column(
            children: [ 
              Padding(
                padding: const EdgeInsets.only(top:20.0),
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
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                       ),
                      
                      ),
              ),               
              Center(
                child: Text(
                    'ورود به حساب کاربری',
                    style: TextStyle(
                     fontSize: 20,
                    fontWeight: FontWeight.w400, 
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                    )
                  ),
              ),            
              Padding(
                padding: const EdgeInsets.only(top:100 ),
                child: Column(
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('تلفن همراه',textAlign: TextAlign.right,),
                        ],
                      ),
                    ),
                    TextField(
                      controller: PhonNumberController,
                      textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person_outlined,  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),), // آیکون سمت راست
                        
                        hintText:"مثلا09024365997",
                        hintStyle: TextStyle(
                             color:  Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // کمرنگ‌تر
                            fontSize: 14, // اختیاری
                           fontStyle: FontStyle.italic, // اختیاری برای زیبایی
                          ),
                        border:OutlineInputBorder(     
                         borderSide: BorderSide(
                             color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // رنگ حاشیه
                            ),  
                          borderRadius: BorderRadius.circular(15),
                        )
                      )
                    ),
                  ],
                ),
              ),
              Spacer(), // فضای خالی برای بردن متن به پایین
             SizedBox(
              width: double.infinity, // عرض دکمه به اندازه عرض صفحه
               child: ElevatedButton(
                onPressed: ()=>Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SecondPage(phon:PhonNumberController.text,),),
                ), 
                child:Text('ارسال کد فعال سازی',),
                style: ElevatedButton.styleFrom(
                   foregroundColor: Colors.white, 
                   backgroundColor:  Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
                  ),
                ),
             ),            
              
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 20.0,top: 15.0),
                 child: RichText(
                   text: TextSpan(
                   style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.onBackground,), // استایل کلی متن
                   children: [
                       TextSpan(text: "ا ورود به اپلیکیشن الگو بان "),
                       TextSpan(
                        text: "شرایط  حریم خصوصی و امنیتی", // کلمه‌ای که رنگ آن متفاوت است
                        style: TextStyle(color:  Theme.of(context).colorScheme.primary,),
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