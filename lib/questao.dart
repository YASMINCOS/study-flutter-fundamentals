import 'package:flutter/material.dart';

class QuestaoWidget extends StatelessWidget {
  final String texto;

  const QuestaoWidget(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
