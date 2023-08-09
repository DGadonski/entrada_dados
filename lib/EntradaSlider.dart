// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _slider = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _slider,
              min: 0,
              max: 10.0, 
              label: _slider.toString(),
              divisions: 10,
              onChanged: (double valor){
                setState(() {
                  _slider = valor;
                });
              }),
            ElevatedButton(
              onPressed: (){
                print('Valor: $_slider');
              },
              child: Text('Salvar')
              )          
          ]
        ),
      )
    );
  }
}