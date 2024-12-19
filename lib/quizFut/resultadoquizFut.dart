import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

class ResultadoFut extends StatelessWidget {
  static const routeName = "ResultadoFut";

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(195.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "Resultado",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'ComicNeue',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Você acertou\n${argumentos.acertos}/10\n perguntas!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Icon(
                              Icons.house,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 235, 95, 95)),
                          ),
                        ),
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'QuizFut');
                            },
                            child: Icon(
                              Icons.replay_outlined,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 144, 255, 134)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
