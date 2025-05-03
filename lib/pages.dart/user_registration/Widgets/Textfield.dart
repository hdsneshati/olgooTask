

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.brandController,
    required this.title,
  });
  final String title;
  final TextEditingController brandController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
                alignment: Alignment.centerRight,
                child: Text(title,),
                ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller:brandController,
            textAlign: TextAlign.right, // راست‌چین کردن متن ورودی
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.storefront,  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),), // آیکون سمت راست
              
              hintText:"نام تولیدی و برندتونو وارد کنید",
              hintStyle: TextStyle(
                   color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // کمرنگ‌تر
                  fontSize: 14, // اختیاری
                 fontStyle: FontStyle.italic, // اختیاری برای زیبایی
                ),
              border:OutlineInputBorder(    
                 borderSide: BorderSide(
                   color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5), // رنگ حاشیه
                  ),        
                borderRadius: BorderRadius.circular(15),
              )
            )
          ),
        ),
      ],
    );
  }
}