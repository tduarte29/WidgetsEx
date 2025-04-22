import 'package:flutter/material.dart';

void main() => runApp(const ConstraintsDemoApp());

class ConstraintsDemoApp extends StatelessWidget {
  const ConstraintsDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Constraints'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExampleTitle('1. Constraints vs Tamanho'),
              _buildConstraintVsSize(),
              _buildExampleTitle('2. Tight Constraints (Restrições Fixas)'),
              _buildTightConstraints(),
              _buildExampleTitle('3. Loose Constraints (Restrições Flexíveis)'),
              _buildLooseConstraints(),
              _buildExampleTitle('4. Constraints Múltiplas Camadas'),
              _buildNestedConstraints(),
              _buildExampleTitle('5. Widgets Não Delimitados'),
              _buildUnboundedWidgets(),
              _buildExampleTitle('6. Flex e Expanded'),
              _buildFlexExample(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExampleTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget _buildConstraintVsSize() {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _buildParentChild(
            parent: Container(
              width: 200,
              height: 100,
              color: Colors.red[100],
              child: Container(
                color: Colors.blue[100],
                width: 300,
                height: 150,
              ),
            ),
            description: 'Filho tenta ser maior que o pai',
          ),
          const SizedBox(height: 10),
          _buildParentChild(
            parent: Container(
              constraints: const BoxConstraints(
                minWidth: 200,
                maxWidth: double.infinity,
                minHeight: 50,
              ),
              color: Colors.green[100],
              child: Container(
                color: Colors.yellow[100],
                width: 150,
                height: 30,
              ),
            ),
            description: 'Pai com constraints flexíveis',
          ),
        ],
      ),
    );
  }

  Widget _buildTightConstraints() {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(
        width: 200,
        height: 100,
      ),
      child: Container(
        color: Colors.orange,
        width: 300,
        height: 150,
      ),
    );
  }

  Widget _buildLooseConstraints() {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(
        Size(300, 100),
      ),
      child: Container(
        color: Colors.purple,
        width: 200,
        height: 50,
      ),
    );
  }

  Widget _buildNestedConstraints() {
    return Container(
      width: 250,
      height: 150,
      color: Colors.grey[300],
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
        ),
        child: Container(
          color: Colors.teal,
          width: 300,
          height: 150,
        ),
      ),
    );
  }

  Widget _buildUnboundedWidgets() {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => Container(
            key: ValueKey(index),
            width: 80,
            margin: const EdgeInsets.all(5),
            color: Colors.indigo,
            child: Center(
              child: Text('Item $index', style: const TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFlexExample() {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: const Center(child: Text('Expanded\nflex:2')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Expanded\nflex:1')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParentChild({
    required Widget parent,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: parent,
        ),
        const SizedBox(height: 5),
        Text(description, style: TextStyle(color: Colors.grey[700])),
      ],
    );
  }
}