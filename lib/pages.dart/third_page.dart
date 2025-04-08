import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  TextEditingController brandController =TextEditingController();
  TextEditingController nameController =TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  Directionality(//برای راست چین کردن صفحه
      textDirection: TextDirection.rtl,
      child: Scaffold(
         appBar: AppBar(
         
         ),
         body: Column(
           children: [
             Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                      Text(
                       'ثبت نام در الگو',
                       style: TextStyle(
                       fontSize: 32,
                        fontWeight: FontWeight.bold, 
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                       ),
                      
                      ),
                      ]
                      ),
                      ),
                       Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                      Text(
                       ' یک حساب کاربری بسازید و شروع کنید',
                       style: TextStyle(
                       fontSize: 20,
                        fontWeight: FontWeight.bold, 
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                       ),
                      
                      ),
                         ],
                         ),
                         ),
                       Padding(
                         padding: const EdgeInsets.only(right: 15.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text('نام تولیدی ',textAlign: TextAlign.right,),
                           ],
                         ),
                       ),
                    TextField(
                      controller:brandController,
                      textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.storefront,  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),), // آیکون سمت راست
                        
                        hintText:"نام تولیدی و برندتونو وارد کنید",
                        hintStyle: TextStyle(
                             color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // کمرنگ‌تر
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

                     Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text('نام و نام خانوادگی',textAlign: TextAlign.right,),
                         ],
                       ),
                     ),
                    TextField(
                      controller:nameController,
                      textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person_outlined,  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),), // آیکون سمت راست
                        
                        hintText:"اسم خودتون رو وارد کنید",
                        hintStyle: TextStyle(
                             color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // کمرنگ‌تر
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
          // سایر ویجت‌ها
            
          
             Spacer(), // فضای خالی برای بردن متن به پایین
             SizedBox(
              width: double.infinity, // عرض دکمه به اندازه عرض صفحه
               child: ElevatedButton(
                onPressed: (){},
                
                
                child:Text('ارسال کد فعال سازی',),
                style: ElevatedButton.styleFrom(
                   foregroundColor: Colors.white, 
                   backgroundColor:  Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
                  ),
                ),
             ),        
           
            ],
        ),
      ),
    );
  }
}