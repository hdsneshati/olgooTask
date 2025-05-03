import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'orders_screen.dart';
import 'analytics_screen.dart';
import 'management_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({
    super.key,
  });
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 16),
              _buildTrustCard(),
              const SizedBox(height: 16),
              _buildOrdersCard(1390),
              const SizedBox(height: 16),
              _buildFeatureMenu(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0, // چون در صفحه‌ی داشبورد هستیم
        onTap: (index) {
          if (index == 0) return; // روی خودش کلیک شده
          if (index == 1) _navigateTo(context, const OrdersScreen());
          if (index == 2) _navigateTo(context, const AnalyticsScreen());
          if (index == 3) _navigateTo(context, const ManagementScreen());
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green, // رنگ آیکون و متن انتخاب‌شده
        unselectedItemColor: Colors.grey, // رنگ آیکون و متن غیر انتخاب‌شده
        selectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors
              .green, // رنگ متن انتخاب‌شده (الزامی نیست اگر selectedItemColor ست شده باشه)
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 15,
          color: Colors.grey, // رنگ متن غیر انتخاب‌شده
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/Home.svg',
              width: 24,
              height: 24,
            ),
            label: 'داشبورد',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/dashboard/note-2.svg',
              width: 24,
              height: 24,
            ),
            label: 'سفارش‌ها',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/chart.svg',
              width: 24,
              height: 24,
            ),
            label: 'آمارگیری',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
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

Widget _buildHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SvgPicture.asset('lib/assets/icons/dashboard/notification.svg',
          width: 24, height: 24),
      SvgPicture.asset('lib/assets/icons/dashboard/setting-2.svg',
          width: 24, height: 24),
      const Spacer(),
      BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
        if (state is AuthOtpVerified) {
          var user = state.userModel;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('${user.name}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text('${user.role}', style: TextStyle(color: Colors.grey)),
            ],
          );
        } else {
          return const Center(
            child: Text('error'),
          );
        }
      }),
      const SizedBox(width: 16),
      SvgPicture.asset('lib/assets/icons/dashboard/Avatar.svg',
          width: 24, height: 24),
    ],
  );
}

Widget _buildTrustCard() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color(0xFFF7F9FD),
      borderRadius: BorderRadius.circular(10),
    ),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                value: 0.83,
                strokeWidth: 5,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            Text('83'),
          ],
        ),
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
                Text('اشتراک ${user.company.status}', style: TextStyle(color: Colors.grey)),
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
      ],
    ),
  );
}

Widget _buildOrdersCard(int ordersCount) {
  return Container(
    padding: const EdgeInsets.all(16),
    width: 380,
    height: 73,
    decoration: BoxDecoration(
      color: const Color(0xFFF8F9FE),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'مدیریت سفارش ها',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Text(
          '${ordersCount} سفارش ثبت شده',
          style: const TextStyle(color: Colors.black),
        ),
        SvgPicture.asset('lib/assets/icons/dashboard/note-2.svg',
            width: 24, height: 24),
      ],
    ),
  );
}

Widget _buildFeatureMenu() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow:const [
         BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 2),
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _menuItem(
          'آمارگیری',
          'lib/assets/icons/dashboard/graph.svg',
          [const Color(0xFF64B5F6), const Color(0xFF42A5F5)],
        ),
        _menuItem(
          'دسته‌بندی‌ها',
          'lib/assets/icons/dashboard/product.svg',
          [const Color(0xFFFFC046), const Color(0xFFFFA726)],
        ),
        _menuItem(
          'محصولات',
          'lib/assets/icons/dashboard/tag.svg',
          [const Color(0xFFEF5350), const Color(0xFFE53935)],
        ),
      ],
    ),
  );
}

Widget _menuItem(String title, String iconPath, List<Color> gradientColors) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                gradientColors[1],
                gradientColors[0],
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(iconPath, width: 30, height: 30),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
