import 'dart:io';

import 'package:flutter/material.dart';

import 'PaginaSobreApp.dart';
import 'PaginaSobreApp2.dart';


class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  void _abrirSobreApp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaSobreApp())
    );
  }

  void _abrirSobreApp2() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaSobreApp2())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos Educativos"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Para acessar os jogos clique nas imagens"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirSobreApp2,
                    child: Image.asset("assets/images/letras.png",width:100,height:100),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirSobreApp, //deve ser criada a função e página e alterado
                    child: Image.asset("assets/images/numeros.png",width:100,height:100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
