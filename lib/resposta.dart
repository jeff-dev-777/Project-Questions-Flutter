import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoForSelecionado;

  const Resposta(this.texto, this.quandoForSelecionado,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const  EdgeInsets.all(5),
       child: ElevatedButton(
          onPressed: quandoForSelecionado,
          child: Text(
            texto,
            style: const TextStyle(color: Colors.white),
            ),
        ),
    );
  
  }
}
