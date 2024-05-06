// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Cadastro.dart';
import 'package:flutter_application_1/src/login.dart';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, Key? key4});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Cadastro(),
    const tela2(),
    const tela3(),
    const Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olá, Usuário'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon( Icons.account_circle),
            label: 'Cadastro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tela 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tela 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tela 4',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class tela1 extends StatelessWidget {
  const tela1({super.key, Key? key5});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: const Center(
        child: Text('Conteúdo da tela 1'),
      ),
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
