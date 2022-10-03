import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_textStyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Mesas | Comandas', style: AppTextStyles.buttonTextBlack ,
        ),
      )
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Text('Comanda ou mesa', style: AppTextStyles.textoGray,
              )
          TextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(texto: 'Inserir Item'),
              CustomButton(texto: 'Ver Detalhes'),
            ],
          )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.apps_sharp), label: 'Mesas'),
        BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Itens'),
      ],),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String texto;
  const CustomButton({Key? key,
  required this.texto,}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 110,
      child: ElevatedButton(
      style: ButtonStyle(backgroundColor: MateraialStateProperty.all(AppColors.primary)),
      onPressed:(){},
      child: Center
      (child: Text(texto, style: AppTextStyles.buttonTextBlack,
      textAlign: TextAlign.center,))
      ),
    );
  }
}
