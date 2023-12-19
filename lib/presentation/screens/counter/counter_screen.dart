import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = 'counter';
  final int contador = 10;
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
          child: Text('Valor: $contador',
              style: Theme.of(context).textTheme.titleLarge)),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
