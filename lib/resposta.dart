import 'package:flutter/material.dart';

class RespostaWidget extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;
   const RespostaWidget(this.texto, this.onSelecao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        onPressed: onSelecao,
        child: Text(texto),
      ),
    );
  }
}
