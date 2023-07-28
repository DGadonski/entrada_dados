// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados',
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
      ),
    );
  }
}