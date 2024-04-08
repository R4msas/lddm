import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Checkbox'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckboxPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('RadioButton'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RadioButtonPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Switch'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SwitchPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Slider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Código para cada página de widget (Checkbox, RadioButton, Switch, Slider)

// Página Checkbox
class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked=value;
                });
              },
            ),
            Text('Checkbox está marcado: $_isChecked'),
          ],
        ),
      ),
    );
  }
}

// Página RadioButton
class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? _selectedValue = 'Opção 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 'Opção 1',
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue=value;
                  });
              },
            ),
            const Text('Opção 1'),
            Radio(
              value: 'Opção 2',
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });}
            ),
            const Text('Opção 2'),
            Text('Valor selecionado: $_selectedValue'),
          ],
        ),
      ),
    );
  }
}

// Página Switch
class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            Text('Switch está ligado: $_isSwitched'),
          ],
        ),
      ),
    );
  }
}
class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _currentSliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Text('Valor atual: $_currentSliderValue'),
          ],
        ),
      ),
    );
  }
}


