import 'package:flutter/material.dart';

class Opcao1 extends StatefulWidget {
  const Opcao1({Key? key}) : super(key: key);

  @override
  State<Opcao1> createState() => _Opcao1State();
}

class _Opcao1State extends State<Opcao1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacao 1"),
      ),
    );
  }
}
