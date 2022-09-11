import 'package:flutter/material.dart';
import './questao.dart';
import './Resposta.dart';
void main() => runApp(PerguntarApp());

class _PerguntarAppState extends State<PerguntarApp> {
  var _perguntaSelecionada = 0;

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntar'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntarApp extends StatefulWidget {
  const PerguntarApp({Key? key}) : super(key: key);
  
  _PerguntarAppState createState() {
    return _PerguntarAppState();
  }

}
