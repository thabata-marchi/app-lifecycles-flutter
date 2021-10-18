import 'package:flutter/material.dart';

class StaticPage extends StatelessWidget {
  const StaticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter vs React Native",
        home: Scaffold(
            backgroundColor: Colors.grey[800],
            appBar: AppBar(
              title: const Text('Página estática',
                  style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.amber,
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Exemplo de uma página estática!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Helvetica",
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 250,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                child: const Text("VOLTAR",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ))))
                      ],
                    )
                  ]),
            )));
  }
}
