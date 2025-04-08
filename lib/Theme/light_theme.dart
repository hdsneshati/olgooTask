// lib/theme/light_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

final lightTheme = ThemeData(
  useMaterial3:true,
  fontFamily: "Yekan",
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.secondary,
    onSecondary: Colors.black,
    background: AppColors.lightBackground,
    onBackground: AppColors.lightText,
    surface: AppColors.lightSurface,
    onSurface: AppColors.lightText,
    error: AppColors.error,
    onError: Colors.white,
    
  ),
  scaffoldBackgroundColor: AppColors.lightBackground,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.lightText),
  ),
  
);
