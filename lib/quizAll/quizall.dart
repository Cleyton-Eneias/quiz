import 'package:flutter/material.dart';
import 'package:quiz/quizAll/dados_quizall.dart';
import 'package:quiz/quizAll/resultadoquizAll.dart';

class QuizAll extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<QuizAll> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;
  int? respostaSelecionada;
  bool isRespondido = false;

  @override
  void initState() {
    quizAll.shuffle();
    super.initState();

    quizAll.forEach((elemento) {
      int alternativaCorreta = elemento['alternativa_correta'] - 1;
      List respostas = elemento['respostas'];
      String respostaCorreta = respostas[alternativaCorreta];
      respostas.shuffle();
      int novoIndiceCorreto = respostas.indexOf(respostaCorreta);
      elemento['alternativa_correta'] = novoIndiceCorreto + 1;
    });
  }

  void respondeu(int respostaNumero) {
    if (!isRespondido) {
      setState(() {
        isRespondido = true;
        respostaSelecionada = respostaNumero;

        if (quizAll[perguntaNumero - 1]['alternativa_correta'] ==
            respostaNumero) {
          print("acertou");
          acertos++;
        } else {
          print("errou");
          erros++;
        }
      });

      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          respostaSelecionada = null;
          isRespondido = false;
          if (perguntaNumero == 10) {
            Navigator.pushNamed(context, 'ResultadoAll',
                arguments: Argumentos(acertos));
          } else {
            perguntaNumero++;
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 108, 207, 247),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Expanded(
                  child: Align(
                child:
                    Icon(Icons.tips_and_updates_rounded, color: Colors.white),
                alignment: Alignment(-0.23, 10.0),
              ))
            ],
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 226, 223, 223),
          child: Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: SizedBox(
                      height: 300,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          quizAll[perguntaNumero - 1]['pergunta'],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ComicNeue'),
                        ),
                      ),
                    ),
                  ),
                  ...List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            respondeu(index + 1);
                          },
                          child: Text(
                            quizAll[perguntaNumero - 1]['respostas'][index],
                            style: TextStyle(
                              color: const Color.fromARGB(255, 65, 17, 8),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            backgroundColor: respostaSelecionada == index + 1
                                ? (quizAll[perguntaNumero - 1]
                                            ['alternativa_correta'] ==
                                        index + 1
                                    ? Colors.green
                                    : Colors.red)
                                : Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
