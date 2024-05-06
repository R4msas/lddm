// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class tela1 extends StatelessWidget {
  const tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: const Center(
        child: Text('Conteúdo da Tela 1'),
      ),
    );
  }
}