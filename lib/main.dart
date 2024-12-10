import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

void main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 10},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Gato', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Cachorro', 'nota': 3},
        {'texto': 'Coelho', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é o seu feriado favorito?',
      'respostas': [
        {'texto': 'Natal', 'nota': 10},
        {'texto': 'Pascoa', 'nota': 5},
        {'texto': 'Dia das Crianças', 'nota': 3},
        {'texto': 'Ano Novo', 'nota': 1},
      ]
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  //Widget build(BuildContext context) {
    //List<Widget> r = [];
    //for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
    //   r.add(RespostaWidget(texto: textoResp, onSelecao: _responder));
    // }

    //List<String> respostas = temPerguntasSelecionada
     //   ? _perguntas[_perguntaSelecionada].cast()['respostas']
    //    : null;

   // List<Widget> widgets =
  //      respostas.map((t) => RespostaWidget(t, _responder)).toList();
//
  //  return MaterialApp(
  //    home: Scaffold(
   //       appBar: AppBar(
   //         title: Text('Perguntas'),
   //       ),
   //       body: temPerguntasSelecionada
   //           ? Column(
  //                children: [
   //                 QuestaoWidget(
   //                     _perguntas[_perguntaSelecionada]['texto'].toString()),
   //                 ...widgets
   ///               ],
   //             )
    //          : const ResultadoWidget()),
   // );
 // }
//}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? QuestionarioWidget(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : const ResultadoWidget(),
      ),
    );
  }
}


class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}
