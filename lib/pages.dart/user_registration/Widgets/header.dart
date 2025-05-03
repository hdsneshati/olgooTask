import 'package:flutter/material.dart';

class headerWidget extends StatelessWidget {
  const headerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
         padding: const EdgeInsets.only(top: 25,right: 20),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
        Text(
         'ثبت نام در الگو',
         style: TextStyle(
         fontSize: 32,
          fontWeight: FontWeight.bold, 
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
         ),
        
        ),
        ]
        ),
        ),
         Padding(
                       padding: const EdgeInsets.only(right: 15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                      Text(
                       ' یک حساب کاربری بسازید و شروع کنید',
                       style: TextStyle(
                       fontSize: 20,
                        fontWeight: FontWeight.bold, 
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                       ),
                      
                      ),
                         ],
                         ),
     ),
      ],
    );
    
  }
}



