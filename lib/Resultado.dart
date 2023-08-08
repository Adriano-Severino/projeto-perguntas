import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandeReniciarQuestionario;

  Resultado(this.pontuacao, this.quandeReniciarQuestionario);

    fraseResultado() {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Voce é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      'Nivel jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Center(
          child: Text(
            fraseResultado(),
            style: TextStyle(fontSize: 28),
          ),
        ),
       TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
    onPressed: quandeReniciarQuestionario,
    child: const Text('Reniciar?',
    style: TextStyle(fontSize: 18),),
    )
    ],
     );
  }
}
