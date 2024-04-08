import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            style: const TextStyle(color:Colors.white),
            decoration:const InputDecoration(
              labelText:"e-mail",
              labelStyle: TextStyle(color:Colors.white),
            )
          ),
          const Divider(),
            TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.text,
            style: const TextStyle(color:Colors.white),
            decoration:const InputDecoration(
              labelText:"senha",
              labelStyle: TextStyle(color:Colors.white),
            )
          ),
          const Divider(),
          ButtonTheme(
            height: 60.0,
            child: ElevatedButton(
              onPressed:(){},
              child: const Text("login"),
            )
          )
        ]

      ))
    );
  }
}