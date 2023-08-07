// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  //bool? _estaSelecionado = false;
  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;


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
          /*Text('Comida brasileira'),
          Checkbox(
            value: _estaSelecionado, 
            onChanged: (bool? valor){
              print('Checkbox ${valor.toString()}');
              setState(() {
                _estaSelecionado = valor;
              });
            }),*/
            CheckboxListTile(
              title: Text('Comida Brasileira'),
              subtitle: Text('A melhor comida do mundo!'),
              activeColor: Colors.red ,
              selected: false ,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira, 
              onChanged: (bool? valor){
                setState(() {
                  _comidaBrasileira = valor;
                });
              }),
            CheckboxListTile(
              title: Text('Comida Mexicana'),
              subtitle: Text('A melhor comida do mundo!'),
              activeColor: Colors.red ,
              selected: false ,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana, 
              onChanged: (bool? valor){
                setState(() {
                  _comidaMexicana = valor;
                });
              }),
              ElevatedButton(
                onPressed: (){
                  print('Comida Brasileira: $_comidaBrasileira');
                  print('Comida Mexicana: $_comidaMexicana');
                  },
                child: Text('Salvar')
              )
        ],
      ),
    );
  }
}