// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './questao.dart';
import './Resposta.dart';
import './Resultado.dart';
void main() => runApp(PerguntarApp());

class _PerguntarAppState extends State<PerguntarApp> {
  var _perguntaSelecionada = 0;

    final  _perguntas = const [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['branco', 'Preto', 'verde'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas' : ['Coelho', 'passaro', 'Cachorro'],
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Julia', 'Julio', 'Mariano'],
      },
      
    ];

    void _responder() {
      if (temPerguntaSelecionada) {
        setState(() {
          _perguntaSelecionada++;
        });
      }
    }
    
    bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
}

  @override
  Widget build(BuildContext context) {
    List<String>? respostas = temPerguntaSelecionada 
    ? _perguntas[_perguntaSelecionada]['respostas'] as List<String>?
    : null;
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntar'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
           ...respostas!.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) : 
         Resultado(),
      ),
    );
  }
}

class PerguntarApp extends StatefulWidget {
  
  _PerguntarAppState createState() {
    return _PerguntarAppState();
  }

}
