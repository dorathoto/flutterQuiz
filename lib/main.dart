import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
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
            Center(child: Text(perguntas[0])),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onSurface: Colors.green,
                  elevation: 20,
                  shadowColor: Colors.red),
              child: Text('Resposta 1'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
