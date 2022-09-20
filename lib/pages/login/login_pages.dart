import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(child: Image.asset('assets/images/#')),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Usuário',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Entrar'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
            )),
      ],
    ));
  }
}
