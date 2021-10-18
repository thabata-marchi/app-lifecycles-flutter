import 'package:flutter/material.dart';
import 'package:my_app_flutter/src/home_page.dart';
import 'package:my_app_flutter/src/static_page.dart';

void main() {
  runApp(const MyApp());
}

// Ciclos de Vida

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const HomePage(),
      '/static': (context) => const StaticPage(),
    });
  }
}
