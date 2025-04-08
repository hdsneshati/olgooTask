// lib/theme/dark_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme(
   brightness: Brightness.dark, // تعیین نوع تم: تاریک (Dark Theme)
   primary: AppColors.primary, // رنگ اصلی برنامه (مثلاً رنگ دکمه‌ها یا نوار بالا)
   onPrimary: Colors.black, // رنگ نوشته‌هایی که روی رنگ primary قرار می‌گیرند (مثل متن دکمه‌ها)
   secondary: AppColors.secondary, // رنگ فرعی (مثلاً برای دکمه‌های کم‌اهمیت‌تر یا highlightها)
   onSecondary: Colors.white, // رنگ نوشته‌هایی که روی رنگ secondary قرار می‌گیرند
   background: AppColors.darkBackground, // رنگ پس‌زمینه عمومی اپلیکیشن در حالت تاریک
   onBackground: AppColors.darkText, // رنگ نوشته‌هایی که روی پس‌زمینه قرار می‌گیرند
   surface: AppColors.darkSurface, // رنگ سطح‌هایی مثل کارت‌ها، پنجره‌ها، bottom sheet و غیره
   onSurface: AppColors.darkText, // رنگ نوشته‌هایی که روی surface (سطح‌ها) قرار می‌گیرند
   error: AppColors.error, // رنگ مربوط به پیام‌ها یا وضعیت‌های خطا (مثلاً قرمز)
   onError: Colors.black, // رنگ نوشته‌هایی که روی رنگ error قرار می‌گیرند

   
  ),
  scaffoldBackgroundColor: AppColors.darkBackground,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.darkText),
  ),
  useMaterial3: true,
);
