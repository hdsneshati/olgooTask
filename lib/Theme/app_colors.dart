// lib/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // رنگ‌های عمومی که در هر دو تم استفاده میشن
  static const Color primary = Colors.green;//رنگ اصلی
  static const Color secondary = Color.fromARGB(255, 49, 224, 148);//رنگ مکمل
  static const Color error = Color.fromARGB(255, 172, 35, 35);
  static const Color botton =Color.fromARGB(255, 158, 157, 157); 
  
  // رنگ‌های روشن
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Colors.white;
  static const Color lightText = Color(0xFF212121);

  // رنگ‌های تیره
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFF5F5F5);
}
