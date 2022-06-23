import 'package:fast_waiter/opcao1.dart';
import 'package:fast_waiter/opcao2.dart';
import 'package:fast_waiter/opcao3.dart';
import 'package:flutter/material.dart';
import '../Style.dart';
import '../opcao4.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  void _abrirOpcao1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Opcao1()));
  }

  void _abrirOpcao2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Opcao2()));
  }

  void _abrirOpcao3() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Opcao3()));
  }

  void _abrirOpcao4() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Opcao4()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 249, 249),
      appBar: AppBar(
        title: const Text(
          "Cardapio Digital",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromARGB(0, 252, 214, 0),
      ),
      body: Container(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "imagens/logo.png",
              width: 120,
              height: 120,
              alignment: Alignment.topCenter,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirOpcao1,
                  child: Image.asset("imagens/yakisoba.png",
                      width: 150, height: 220),
                ),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                GestureDetector(
                  onTap: _abrirOpcao2,
                  child: Image.asset(
                    "imagens/hamburguer.png",
                    width: 210,
                    height: 210,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
              width: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirOpcao3,
                  child: Image.asset("imagens/feijoada.png",
                      width: 180, height: 210),
                ),
                const SizedBox(
                  height: 15,
                  width: 15,
                ),
                GestureDetector(
                  onTap: _abrirOpcao4,
                  child: Image.asset("imagens/frango.png",
                      width: 160, height: 180),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountEmail: Text("seu@email.com"),
              accountName: Text("Sua conta"),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Login"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text("Cadastro"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
