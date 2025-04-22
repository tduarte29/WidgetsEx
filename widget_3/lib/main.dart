import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Múltiplos Temas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
      ),
      home: const ThemedScreens(),
    );
  }
}

class ThemedScreens extends StatelessWidget {
  const ThemedScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Temas Aninhados')),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Área com Tema Azul Padrão',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              scaffoldBackgroundColor: Colors.yellow,
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.black87),
              ),
            ),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text(
                    'Área com Tema Amarelo Sobrescrito',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}