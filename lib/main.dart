import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme/light_theme.dart';

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
     
      // حالت خودکار براساس سیستم گوشی
      home: LoginScreen(),
    );
  }
}