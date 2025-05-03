import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/analytics_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/dashboard_screen.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/orders_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManagementScreen extends StatelessWidget {
  const ManagementScreen({super.key});
  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 46),
            _buildTrustCard(),
            const SizedBox(height: 46),
            buildManageButton(
              title: 'مدیریت محصولات',
              iconPath: 'lib/assets/icons/management/tag.svg',
              onTap: () {
                // اقدام هنگام کلیک
              },
            ),
          const  Divider(
              color: Colors.grey, // رنگ خط
              thickness: 1, // ضخامت خط
              indent: 16, // فاصله از سمت چپ
              endIndent: 16, // فاصله از سمت راست
            ),
            buildManageButton(
              title: 'مدیریت دسته بندی ها',
              iconPath: 'lib/assets/icons/management/box.svg',
              onTap: () {
                // اقدام هنگام کلیک
              },
            ),
           const Divider(
              color: Colors.grey, // رنگ خط
              thickness: 1, // ضخامت خط
              indent: 16, // فاصله از سمت چپ
              endIndent: 16, // فاصله از سمت راست
            ),
            buildManageButton(
              title: 'کاربران سیستم',
              iconPath: 'lib/assets/icons/management/profile-2user.svg',
              onTap: () {},
            ),
            const SizedBox(height: 46),
            buildManageButton(
              title: 'آموزش کار با سیستم',
              iconPath: 'lib/assets/icons/management/video-play.svg',
              onTap: () {},
            ),
           const Divider(
              color: Colors.grey, // رنگ خط
              thickness: 1, // ضخامت خط
              indent: 16, // فاصله از سمت چپ
              endIndent: 16, // فاصله از سمت راست
            ),
            buildManageButton(
              title: 'حریم خصوصی',
              iconPath: 'lib/assets/icons/management/security-safe.svg',
              onTap: () {},
            ),
          const  Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(left: 35, bottom: 16),
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.blue,
                        )),
                    child: Row(
                      children: [
                        Text(
                          'خروجی اطلاعات',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          'lib/assets/icons/management/trailing-icon-wrapper.svg',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 3, // چون در صفحه‌ی داشبورد هستیم
        onTap: (index) {
          if (index == 0)
            _navigateTo(context, DashboardScreen()); // روی خودش کلیک شده
          if (index == 1) _navigateTo(context, OrdersScreen());
          if (index == 2) _navigateTo(context, AnalyticsScreen());
          if (index == 3) return;
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green, // رنگ آیکون و متن انتخاب‌شده
        unselectedItemColor: Colors.grey, // رنگ آیکون و متن غیر انتخاب‌شده
        selectedLabelStyle:const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors
              .green, // رنگ متن انتخاب‌شده (الزامی نیست اگر selectedItemColor ست شده باشه)
        ),
        unselectedLabelStyle:const TextStyle(
          fontSize: 15,
          color: Colors.grey, // رنگ متن غیر انتخاب‌شده
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/Home.svg',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            label: 'داشبورد',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/dashboard/note-2.svg',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            label: 'سفارش‌ها',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/chart.svg',
              width: 24,
              height: 24,
              color: Colors.grey,
            ),
            label: 'آمارگیری',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/user-octagon.svg',
              width: 24,
              height: 24,
              color: Colors.green,
            ),
            label: 'مدیریت',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
        shape:const CircleBorder(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

Widget _buildTrustCard() {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'lib/assets/icons/management/Arrow Right.svg',
            width: 12,
            height: 12,
          ),
        const  Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Stack(
              alignment: Alignment.center,
              children:const [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    value: 0.23,
                    strokeWidth: 2,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                Column(
                  children:const [
                    Text(
                      '13',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'روز مانده',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
         const Spacer(),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthOtpVerified) {
             var user = state.userModel;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${user.company.title}',
                      style:const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                 const SizedBox(height: 4),
                  Row(
                    children: [
                      Text('اشتراک ${user.company.status}', style:const TextStyle(color: Colors.grey)),
                      SvgPicture.asset(
                        'lib/assets/icons/management/Ellipse 17.svg',
                        width: 8,
                        height: 8,
                      ),
                    ],
                  ),
                ],
              );
              }
              else{
                 return const Center(
                      child: Text('error'),
                  );
              }
            },
          ),
          SvgPicture.asset(
            'lib/assets/icons/management/Avatar.svg',
            width: 65,
            height: 65,
          ),
        ],
      ),
    ),
  );
}

Widget buildManageButton({
  required String title,
  required String iconPath,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 65,
        width: 358,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              'lib/assets/icons/management/handle.svg',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 12),
            // متن
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            // فلش سمت چپ
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                iconPath,
                width: 36,
                height: 36,
                color: const Color(0xFF0F62FE), // آبی سیستم
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
