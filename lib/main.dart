import 'package:flutter/material.dart';
import './pages.dart/first_page.dart';
import './pages.dart/second_page.dart';
import './pages.dart/third_page.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,     
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // حالت خودکار براساس سیستم گوشی
      home: FirstPage(),
    );
  }
}