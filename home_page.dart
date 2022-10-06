import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_textStyles.dart';
import '../core/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Menu', style: AppTextStyles.buttonTextBlack ,
        ),
      ),
      body: TelaInicial(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index){
          _index = index;
          setState(() { });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Itens'),
      ],),
    );
  }
}

class TelaInicial extends StatelessWidget{
  const TelaInicial({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Text('Tela Inicial', style: AppTextStyles.textoGray,
              ),
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
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primary)),
      onPressed:(){},
      child: Center
      (child: Text(texto, style: AppTextStyles.buttonTextBlack,
      textAlign: TextAlign.center,))
      ),
    );
  }
}
