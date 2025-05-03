import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/dashboard_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/management_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/orders_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});
void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 243, 247, 244),
       
       body: Column(
        children: [
          const SizedBox(height: 60),         
         const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('آمار گیری',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
                      ),),
            ),
          ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              _buildStatCard(
                title: 'آمار گیری دسته بندی ها  ',
                subtitle: 'وضعیت و تعداد سفارش های هر دسته بندی رو به صورت تفکیک شده مشاهده کنید',
                imagePath: 'lib/assets/icons/dashboard/product.svg', // مسیر آیکن لباس
              ),
              const SizedBox(height: 16),
              _buildStatCard(
                title: 'آمار گیری محصولات',
                subtitle: 'آمار فروش و نیازمندی های هر محصول رو  میتونی اینجا بررسی کنی.',
                imagePath: 'lib/assets/icons/dashboard/product.svg', // مسیر آیکن لباس
              ),
              const SizedBox(height: 16),
               _buildStatCard(
                title: ' گزارش سفارشات  ',
                subtitle: 'تعداد سفارش ها رو در بازه های مختلف میتونی  بررسی کنی و درآمد حاصل از اون رو محاسبه کنی',
                imagePath: 'lib/assets/icons/dashboard/product.svg', // مسیر آیکن لباس
              ),
        ],
       ),




       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 2, // چون در صفحه‌ی داشبورد هستیم
        onTap: (index) {
          if (index == 0) _navigateTo(context, DashboardScreen()); // روی خودش کلیک شده
          if (index == 1) _navigateTo(context, OrdersScreen());
          if (index == 2) return;
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
             color: Colors.grey,
           ),
            label: 'سفارش‌ها',
          ),
          BottomNavigationBarItem(
           icon:SvgPicture.asset(
             'lib/assets/icons/chart.svg',
             width: 24,
             height: 24,
             color: Colors.green,
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

 Widget _buildStatCard({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
   return  Card(
     
       color: const Color.fromARGB(255, 252, 252, 252), // رنگ بکگراند کارت
      
       child: InkWell(
        onTap: () {
          
        },
         child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: Container(
                     width: 356,
                     height: 86,
                   decoration:const BoxDecoration(
                       color: Color.fromARGB(255, 252, 252, 252),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: SvgPicture.asset('lib/assets/icons/analiz/Arrow Right.svg', width: 12, height: 12),
                         ),              
                         Spacer(),
                              Column(
                                children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(title,
                                   textDirection: TextDirection.rtl,
                                   style:const TextStyle(
                                        color:  Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                ),
                                Container(
                                  width: 247,
                                  height: 30,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(  subtitle, 
                                     textDirection: TextDirection.rtl,                         
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                
                                        style:const TextStyle(
                                          color: Colors.black,
                                        ),
                                    ),
                                  ),
                                ),
                                ]
                              ),                                      
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: SvgPicture.asset(imagePath,
                            width: 45,
                             height: 50,
                             color: Colors.black,
                             ),
                         ),             
                      ],
                    ),
                  ),
                ),
       ),
     );
   
           
    
  }

