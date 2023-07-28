// ignore_for_file: file_names, prefer_const_constructors, avoid_print, sort_child_properties_last, prefer_interpolation_to_compose_strings, prefer_final_fields

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Digite um valor:'
              ),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforcement: MaxLengthEnforcement.none,
              style: TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
              //obscureText: true, utilizado em senhas.
              /*onChanged: (String texto){
                print('Texto digitado: $texto.');
              },*/
              onSubmitted:(String texto) {
                print('Texto digitado: $texto.');
              }, 
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print('O valor digitado é ' + _textEditingController.text);
            }, 
            child: Text('Salvar'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightGreen)
            ),
            )
        ],
      ),
    );
  }
}