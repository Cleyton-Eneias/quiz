import 'package:flutter/material.dart';
import 'package:quiz/quizAll/quizall.dart';
import 'package:quiz/quizAll/resultadoquizAll.dart';
import 'package:quiz/quizFut/quizfut.dart';
import 'package:quiz/quizFut/resultadoquizFut.dart';
import 'package:quiz/quizGeo/quizgeo.dart';
import 'package:quiz/quizGeo/resultadoquizGeo.dart';
import 'package:quiz/quizHis/quizhis.dart';
import 'package:quiz/quizHis/resultadoquizHis.dart';
import 'paginainicial.dart';
import 'quizBib/quiz.dart';
import 'quizBib/resultados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ComicNeue'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaInicial(),
        'QuizAll': (context) => QuizAll(),
        'Quiz': (context) => Quiz(),
        'QuizFut': (context) => QuizFut(),
        'QuizGeo': (context) => QuizGeo(),
        'QuizHis': (context) => QuizHis(),
        ResultadoAll.routeName: (context) => ResultadoAll(),
        Resultado.routeName: (context) => Resultado(),
        ResultadoFut.routeName: (context) => ResultadoFut(),
        ResultadoGeo.routeName: (context) => ResultadoGeo(),
        ResultadoHis.routeName: (context) => ResultadoHis()
      },
    );
  }
}
