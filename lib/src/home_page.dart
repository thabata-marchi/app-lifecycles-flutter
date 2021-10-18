import 'package:flutter/material.dart';
import 'package:my_app_flutter/src/static_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _changeText = '';
  double sideLength = 50;

  @override
  void initState() {
    _changeText = "State inicial!";
    // ignore: avoid_print
    print('Ciclo de vida: Inicio (initState)');
    super.initState();
  }

  @override
  void dispose() {
    // ignore: avoid_print
    print('Ciclo de vida: Final (dispose)');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Build');

    return MaterialApp(
      title: "Flutter vs React Native",
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: const Text('Página com estado',
              style: TextStyle(color: Colors.greenAccent)),
          backgroundColor: Colors.black26,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Exemplo: $_changeText",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 22,
                  fontFamily: "Helvetica",
                  decoration: TextDecoration.none,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Clique no quadrado para alterar o texto!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 18,
                    fontFamily: "Helvetica",
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: AnimatedContainer(
                  height: sideLength,
                  width: sideLength,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                  child: Material(
                    color: Colors.lightGreenAccent,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          sideLength == 50 ? sideLength = 100 : sideLength = 50;
                          _changeText = "State alterado!";
                        });
                      },
                    ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const StaticPage()));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          child: const Text("IR PARA TELA ESTÁTICA",
                              style: TextStyle(fontSize: 18))))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
