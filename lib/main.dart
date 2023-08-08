// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Questionario.dart';
import './Resultado.dart';

void main() => runApp(PerguntarApp());

class _PerguntarAppState extends State<PerguntarApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'branco', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'verde', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'passaro', 'pontuacao': 5},
        {'texto': 'Cachorro', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Julia', 'pontuacao': 10},
        {'texto': 'Julio', 'pontuacao': 5},
        {'texto': 'Mariano', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntar'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quantoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntarApp extends StatefulWidget {
  _PerguntarAppState createState() {
    return _PerguntarAppState();
  }
}
