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
    final List<Map<String, Object>> perguntas = [
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
    
    List<String>? respostas = perguntas[_perguntaSelecionada]['respostas'] as List<String>;
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntar'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
           ...respostas.map((t) => Resposta(t, _resposta)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntarApp extends StatefulWidget {
  
  _PerguntarAppState createState() {
    return _PerguntarAppState();
  }

}
