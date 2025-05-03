

import './Widgets/Textfield.dart';
import 'package:flutter/material.dart';
import './Widgets/button_Widget.dart';
import './Widgets/header.dart';
class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreen();
}

class _UserRegistrationScreen extends State<UserRegistrationScreen> {

  TextEditingController brandController =TextEditingController();
  TextEditingController nameController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Directionality(//برای راست چین کردن صفحه
      textDirection: TextDirection.rtl,
      child: Scaffold(       
         body: Column(
           children: [
           const SizedBox(height: 20,),
           const  headerWidget(), 
           const  SizedBox(height: 20,),     
             TextFieldWidget(brandController: brandController,title:' نام تولیدی  ',),                   
            const SizedBox(height: 20,),
             TextFieldWidget(brandController: nameController,title: 'نام و نام خانوادگی',),      
           const  Spacer(), 
           const  buttonWidget(), 
           const  SizedBox(height: 20,)                  
            ],
        ),
      ),
    );
  }
}

