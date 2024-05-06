import 'package:flutter/material.dart';

// ignore: camel_case_types
class tela2 extends StatelessWidget {
  const tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: const Center(
        child: Text('Conteúdo da Tela 1'),
      ),
    );
  }
}