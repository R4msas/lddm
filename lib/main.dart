// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyHomePage.dart';
// import 'package:flutter_application_1/src/tela1.dart';
// import 'package:flutter_application_1/src/tela2.dart';
// import 'package:flutter_application_1/src/tela3.dart';
// import 'package:flutter_application_1/src/tela4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? key2});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olá',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: const MyHomePage(),
    );
  }
}



class tela2 extends StatelessWidget {
  const tela2({super.key, Key? key5});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: const Center(
        child: Text('Conteúdo da tela 2'),
      ),
    );
  }
}

class tela3 extends StatelessWidget {
  const tela3({super.key, Key? key6});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 3'),
      ),
      body: const Center(
        child: Text('Conteúdo da tela 3'),
      ),
    );
  }
}

class tela4 extends StatelessWidget {
  const tela4({super.key, Key? key7});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 4'),
      ),
      body: const Center(
        child: Text('Conteúdo da tela 4'),
      ),
    );
  }
}
