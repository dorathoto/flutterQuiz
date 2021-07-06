import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
<<<<<<< HEAD

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
=======
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: quandoSelecionado,
      ),
    );
>>>>>>> 6bf7ae5f21a2c1f42feb4f3a7a590351602a0369
  }
}
