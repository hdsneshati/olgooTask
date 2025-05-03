import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/pages.dart/screens/dashboard_screen.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
       width: double.infinity, // عرض دکمه به اندازه عرض صفحه
        child: ElevatedButton(
         onPressed: (){
          Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),);
         },
         
         
         child:Text('ارسال کد فعال سازی',),
         style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, 
            backgroundColor:  Theme.of(context).colorScheme.primary, // رنگ متن دکمه.
           ),
         ),
      ),
    );
  }
}

