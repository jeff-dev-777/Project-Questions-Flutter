import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String? get fraseResultado {
    if (pontuacao < 12) {
      return 'vc tem pessimos gostos';
    } else if (pontuacao < 20) {
      return 'gostos mais ou menos';
    } else if (pontuacao < 30) {
      return 'vc tem bons gostos, parabéns';
    } else {
      return 'vc tem gostos pikas';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado!, style: const TextStyle(fontSize: 30)),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: ElevatedButton(
            child: Text('Reiniciar'),
             onPressed: quandoReiniciarQuestionario,),
        )
      ],
    );
  }
}
