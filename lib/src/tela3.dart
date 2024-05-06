import 'package:flutter/material.dart';

// ignore: camel_case_types
class tela3 extends StatelessWidget {
  const tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 3'),
      ),
      body: const Center(
        child: Text('Conteúdo da Tela 1'),
      ),
    );
  }
}