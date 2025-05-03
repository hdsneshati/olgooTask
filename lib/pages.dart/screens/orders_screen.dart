import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/analytics_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/dashboard_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/management_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xFFFFFFFF), 
      appBar: AppBar(
        
        
      ),
      body: Center(
        child: Column(
          children: [
            _buildCustomAppBar(),
            _buildSearchBar(),
            _buildOrdersCard(),
          ],
        )),
      
      
      
      
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 1, // چون در صفحه‌ی داشبورد هستیم
        onTap: (index) {
          if (index == 0) _navigateTo(context, DashboardScreen()); // روی خودش کلیک شده
          if (index == 1) return;
          if (index == 2) _navigateTo(context, AnalyticsScreen());
          if (index == 3) _navigateTo(context, ManagementScreen());
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green, // رنگ آیکون و متن انتخاب‌شده
        unselectedItemColor: Colors.grey, // رنگ آیکون و متن غیر انتخاب‌شده
        selectedLabelStyle:const TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.bold,
             color: Colors.green, // رنگ متن انتخاب‌شده (الزامی نیست اگر selectedItemColor ست شده باشه)
          ),
          unselectedLabelStyle:const TextStyle(
             fontSize: 15,
             color: Colors.grey, // رنگ متن غیر انتخاب‌شده
          ),
        items: [
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
             'lib/assets/icons/Home.svg',
             width: 24,
             height: 24,
             color: Colors.grey,
           ),
           label: 'داشبورد',
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
             'lib/assets/icons/dashboard/note-2.svg',
             width: 24,
             height: 24,
             color: Colors.green,
           ),
            label: 'سفارش‌ها',
          ),
          BottomNavigationBarItem(
           icon:SvgPicture.asset(
             'lib/assets/icons/chart.svg',
             width: 24,
             height: 24,
             
           ),
            label: 'آمارگیری',
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
             'lib/assets/icons/user-octagon.svg',
             width: 24,
             height: 24,
             
           ),
            label: 'مدیریت',
          ),
        ],
      ),
    
    
    );
  }
}

Widget _buildCustomAppBar(){
  return  Container(
    padding: EdgeInsets.only(bottom: 40.0,top:20,right: 20,left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
            SvgPicture.asset(
                      'lib/assets/icons/order/Search.svg',
                       width: 24,
                       height: 24,
                        color: Colors.black,
                       ),
           InkWell(
             onTap: () {
               
               }, 
               borderRadius: BorderRadius.circular(10),                
               child:Container(
                
               color: Colors.green,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   
                    SvgPicture.asset(
                      'lib/assets/icons/order/add.svg',
                       width: 24,
                       height: 24,
                        color: Colors.white,
                       ),
                        Text('سفارش جدید',
                         style:const TextStyle(
                         color: Colors.white,
                           ),),
                      
                  ],
                 ),
               ),
           ),
          Spacer(),
          const Text('مدیریت سفارش ها',
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
           ),),

      ],
    ),
  );
}

 Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 6 ), 
      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           _buildButton('تحویلی'),
          const SizedBox(width: 8,),
           _buildButton('اماده'),
          const SizedBox(width: 8,),
           _buildButton('جاری'),
          const Spacer(),
          Container(
            height: 48,
            width: 171,
            decoration: BoxDecoration(
               color: const Color.fromARGB(255, 188, 187, 180),
               borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
               
              const  Text('انتخاب دسته بندی ',
                 style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                 ),),
                  SvgPicture.asset('lib/assets/icons/order/tag.svg'),
              ],
            ),
          ),
        ],
      ),
    );
    
    
    }
 Widget _buildButton(String label) {
     bool isSelected = false;
    

    return InkWell(
      onTap: () {
        isSelected = true;
         
      },
      child: Container(
        width: 56,
        height: 48,        
        decoration: BoxDecoration(          
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.green,           
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }


 Widget _buildOrdersCard(){
   return Container(
     decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
         color:const Color(0xFFF2F9FF),
      ),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 ردیف اول: نام و تاریخ
            
            const SizedBox(height: 16),

            /// 🔹 بخش میانی (ریویوش و شناور)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 
                Container(
                  width:200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(                   
                    children: [
                      _buildInfoRow('روپوش', '24 مدیوم'),
                      const Divider(),
                      _buildInfoRow('شلوار', '23 مدیوم'),
                      const Divider(),
                      
                    ],
                  ),
                ),
           const  Spacer(),
             Column(
               children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('هاشم بیگ زاده',style: TextStyle(
                  color: Colors.grey,
                 fontWeight: FontWeight.bold,
                 fontSize: 17,
                      ),),
            ),
          ),   
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                         SvgPicture.asset('lib/assets/icons/order/calander.svg',
                             height: 24,
                             width: 24,
                              ),
                      const  SizedBox(width: 4),
                      const  Text('1402/10/15', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                     Align(
                      alignment: Alignment.centerRight,
                       child: SvgPicture.asset('lib/assets/icons/order/paperclip-2.svg',
                       height: 24,
                       width: 24,
                       ),
                     ),
               ],
             ),
              ],
            ),

            const SizedBox(height: 16),
            const Divider(),
            /// 🔹 وضعیت سفارش و مبلغ
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'سفارش آماده نشده',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.circle, size: 10, color: Colors.red),
                  ],
                ),
                 Text(
                  'مبلغ پرداختی: ۴۹۰,۰۰۰ تومان',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// تابع کمکی برای ساخت هر ردیف اطلاعات داخل باکس
  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(value, style: const TextStyle(fontSize: 14, color: Colors.black)),
          Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),

    );
  }
  





