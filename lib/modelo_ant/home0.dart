import 'package:fast_waiter/cards/card_feijo.dart';
import 'package:flutter/material.dart';

class Home0 extends StatefulWidget {
  const Home0({Key? key}) : super(key: key);

  @override
  State<Home0> createState() => _HomeState();
}

class _HomeState extends State<Home0> {
  void _abriOpcao1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageF()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cardapio Eletronico"),
        backgroundColor: Color.fromARGB(255, 237, 153, 6),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/frango.png"),
            const SizedBox(
              width: 30,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abriOpcao1,
                  child: Image.asset("imagens/yakisoba.png"),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                ),
                GestureDetector(
                  //onTap: _abriServico,
                  child: Image.asset("imagens/feijoada.png"),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  //onTap: _abriCliente,
                  child: Image.asset("imagens/hamburguer.png"),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                ),
                GestureDetector(
                  //onTap: _abriContato,
                  child: Image.asset("imagens/frango.png"),
                ),
                const SizedBox(
                  width: 25,
                  height: 25,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
