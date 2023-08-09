// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario= false;
  bool _escolhaConfig= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Column(
        children: [
          Switch(
            value: _escolhaUsuario, 
            onChanged: (valor){
              setState(() {
                _escolhaUsuario = valor;  
              });

            }),
            Text('Receber notificações?'),
          SwitchListTile(
            
            title: Text('Modo escuro'),
            value: _escolhaConfig, 
            onChanged: (bool valor){
              setState(() {
                _escolhaConfig = valor;
              });

            }),
            ElevatedButton(
                onPressed: (){
                  print('Notificações: ' + _escolhaUsuario.toString());
                  print('Configuração: ' + _escolhaConfig.toString());                  
                  },
                child: Text('Salvar')
              )
          
        ]
      )
    );
  }
}