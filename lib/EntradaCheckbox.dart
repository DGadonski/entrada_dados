// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool? _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Column(
        children: [
          Text('Comida brasileira'),
          Checkbox(
            value: _estaSelecionado, 
            onChanged: (bool? valor){
              print('Checkbox ${valor.toString()}');
              setState(() {
                _estaSelecionado = valor;
              });
            }),
            CheckboxListTile(
              title: Text('Comida Brasileira'),
              subtitle: Text('A melhor comida do mundo!'),
              activeColor: Colors.red ,
              selected: false ,
              secondary: Icon(Icons.add),
              value: _estaSelecionado, 
              onChanged: (bool? valor){
                setState(() {
                  _estaSelecionado = valor;
                });
              }),
        ],
      ),
    );
  }
}