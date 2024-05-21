// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BemVindoPage extends StatelessWidget {
  final String name;

  const BemVindoPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo(a), $name'),
      ),
      body: const Center(
        child: Text('Bem vindo de volta'),
      ),
    );
  }
}