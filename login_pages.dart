import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/app_textStyles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(child: Image.asset('assets/images/#')),
        Text('Usuario', style:AppTextStyles.texto),
        TextFormField(),
        SizedBox(
          height: 15,
        ),
        Container(
            width: double.infinity,
            height: 39,
            child: ElevatedButton(
              onPressed: () {Navigator.of(context).pushReplacementNamed('/home');},
              child: Text('Entrar', 
              style: AppTextStyles.buttonTextBlack
                ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)
              ),
            )
          ),
        ],
      )
    );
  }
}
