import 'package:flutter/material.dart';

class Opcao2 extends StatefulWidget {
  const Opcao2({Key? key}) : super(key: key);

  @override
  State<Opcao2> createState() => _Opcao2State();
}

class _Opcao2State extends State<Opcao2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opcao2"),
      ),
    );
  }
}
