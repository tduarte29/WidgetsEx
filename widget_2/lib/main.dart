import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Azul',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // Cor de fundo global
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent, // Cor da AppBar
          foregroundColor: Colors.white, // Cor do texto/icons da AppBar
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 50,
          color: Colors.yellow,
        ),
        const SizedBox(height: 10),
        const Text(
          'Este é um widget personalizado!',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Este é um widget simples!',
      style: TextStyle(fontSize: 20, color: Colors.white),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicativo com Tema Azul'),
      ),
      body: const Center(
        child: SimpleWidget(), // Substituí pelo widget simples
      ),
    );
  }
}