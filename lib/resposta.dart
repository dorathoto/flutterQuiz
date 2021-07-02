import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onSurface: Colors.green,
            elevation: 20,
            shadowColor: Colors.red),
        child: Text(texto),
        onPressed: null);
  }
}
