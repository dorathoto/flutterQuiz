import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Center(child: Text(perguntas[perguntaSelecionada])),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onSurface: Colors.green,
                    elevation: 20,
                    shadowColor: Colors.red),
                child: Text('Resposta 1'),
                onPressed: responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
