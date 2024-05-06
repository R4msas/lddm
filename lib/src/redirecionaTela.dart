// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/tela1.dart';
import 'package:flutter_application_1/src/tela2.dart';
import 'package:flutter_application_1/src/tela3.dart';
import 'package:flutter_application_1/src/tela4.dart';


class RedirecionaTela extends StatefulWidget {
  const RedirecionaTela({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _RedirecionaTela createState() => _RedirecionaTela();
}

class _RedirecionaTela extends State<RedirecionaTela> {
  int _indiceSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _obterTelaAtual(_indiceSelecionado),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tela 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Tela 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tela 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tela 4',
          ),
        ],
        currentIndex: _indiceSelecionado,
        onTap: (indice) {
          setState(() {
            _indiceSelecionado = indice;
          });
        },
      ),
    );
  }

  Widget _obterTelaAtual(int indice) {
    switch (indice) {
      case 0:
        return const tela1();
      case 1:
        return const tela2();
      case 2:
        return const tela3();
      case 3:
        return const tela4();
      default:
        return const Text('Tela não encontrada');
    }
  }
}
