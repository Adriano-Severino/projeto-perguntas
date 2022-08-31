import 'package:flutter/material.dart';
import './questao.dart';
void main() => runApp(PerguntarApp());

class PerguntarAppState extends State<PerguntarApp> {
  var _perguntaSelecionada = 0;

  void resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntar'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              onPressed: resposta,
              child: const Text('resposta 1'),
            ),
            RaisedButton(
              onPressed: resposta,
              child: const Text('resposta 2'),
            ),
            RaisedButton(
              onPressed: resposta,
              child: const Text('resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntarApp extends StatefulWidget {
  const PerguntarApp({Key? key}) : super(key: key);
  
  PerguntarAppState createState() {
    return PerguntarAppState();
  }

}
