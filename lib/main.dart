import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _indicePerguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': ['Preto', 'Vermelho', 'Rosa', 'Azul']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['Cachorro', 'gato', 'peixe', 'pássaro']
    },
    {
      'texto': 'Qual o físico mais famoso?',
      'resposta': ['Einsten', 'Galileu', 'Corpénico', 'Newton']
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _indicePerguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _indicePerguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
//declarativa

    //imperativo
    // List<Widget> respostas = [];
    // for (String textoResp
    //     in perguntas[_perguntaSelecionada].cast()['resposta']) {
    //   respostas.add(Resposta(textoResp, _responder));
    //   print(textoResp);
    // }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  indicePerguntaSelecionada: _indicePerguntaSelecionada,
                  responder: _responder)
              : Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
