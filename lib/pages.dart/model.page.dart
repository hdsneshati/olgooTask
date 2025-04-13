import 'package:flutter/material.dart';
import 'package:flutter_application_ui_olgoo/bloc.dart/auth.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Model extends StatelessWidget {

  const Model({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
              BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthOtpSend) {                
                return Text('نام: ${state.toString()}د');
              } else {
                return Text('data');
              }
            },
          ),
        ],
      ),
    );
  }
}