import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc.dart/auth.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages.dart/login_screen.dart';
import 'pages.dart/otp_verification_screen.dart';
import 'pages.dart/user_registration_screen.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';
void main() {
  runApp(
    MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthBloc(),
      ),
    ],
    child:MyApp(),
  ));
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