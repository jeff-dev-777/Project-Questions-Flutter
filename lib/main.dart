import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final _perguntas = const [
    {
      'texto': 'qual o seu esporte favorito',
      'respostas': [
        {'texto': 'basquete', 'nota': 6},
        {'texto': 'vôlei', 'nota': 3},
        {'texto': 'Futebol', 'nota': 10},
        {'texto': 'boxe', 'nota': 9},
      ],
    },
    {
      'texto': 'qual o seu musculo favorito',
      'respostas': [
        {'texto': 'costas', 'nota': 9},
        {'texto': 'peito', 'nota': 10},
        {'texto': 'perna', 'nota': 3},
        {'texto': 'abdomen', 'nota': 6},
      ],
    },
     {
      'texto': 'qual seu Anime Favorito',
      'respostas': [
        {'texto': 'Dragon Ball Z ', 'nota': 10},
        {'texto': 'Naruto', 'nota': 7},
        {'texto': 'One piece', 'nota': 3},
        {'texto': 'Atack on titan', 'nota': 9},
      ],
    },
  ];

  void _responder(int nota) {
    setState(() {
      _perguntaSelecionada++;
      _notaTotal += nota;

    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _reiniciarQuestionario() {
   setState(() {
     _perguntaSelecionada = 0;
     _notaTotal = 0;
   });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(_notaTotal, _reiniciarQuestionario),
      ),
    );
  }
}
