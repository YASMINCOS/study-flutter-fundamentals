import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class QuestionarioWidget extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const QuestionarioWidget({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        QuestaoWidget(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) {
          return RespostaWidget(
            resp['texto'] as String,
            () => quandoResponder(resp['nota'] as int),
          );
        }).toList(),
      ],
    );
  }
}
