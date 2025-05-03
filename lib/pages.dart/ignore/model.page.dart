

import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc/auth.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Model extends StatelessWidget {

  const Model({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        
        children: [
          
              BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthOtpVerified) {     
                var user=state.userModel;           
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:150),
                    child: Column(
                      children: [
                        Text('id: ${user.company.id}',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color:Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                           ),
                         ),
                        Text('phoneNumber: ${user.company.phoneNumber}',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color:Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                           ),),
                        Text('status: ${user.company.status}',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color:Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                           ),),
                        Text('title: ${user.company.title}',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color:Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                           ),),
                      ],
                    ),
                  ),
                );
              } else {
                return const Text('data');
              }
            },
          ),
        ],
      ),
    );
  }
}