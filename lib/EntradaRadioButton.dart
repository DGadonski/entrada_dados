// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String? _escolhaUsuario = '';

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Column(
        children: [
          RadioMenuButton(
            value: 'm', 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
              print('Resultado: $escolha');
            }, 
            child: Text('Masculino')),
          RadioMenuButton(
            value: 'f', 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });
              print('Resultado: $escolha');
            }, 
            child: Text('Feminino')),
          RadioListTile(
            title: Text('Masculino'),
            value: 'm', 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });  
            }),
          RadioListTile(
            title: Text('Feminino'),
            value: 'f', 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha;
              });  
            }),
          ElevatedButton(
                onPressed: (){
                  print(_escolhaUsuario);
                },
                child: Text('Salvar')
              ),
        ],
      ),
    );
  }
}