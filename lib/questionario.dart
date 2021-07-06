import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int indicePerguntaSelecionada;
  final List<Map<String, Object>> perguntas;

  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.indicePerguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return indicePerguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[indicePerguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[indicePerguntaSelecionada]['texto'].toString()),
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}
