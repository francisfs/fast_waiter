import 'package:fast_waiter/Style.dart';
import 'package:fast_waiter/cards/card_yaki.dart';
import 'package:fast_waiter/home_page.dart';
import 'package:fast_waiter/precos.dart';
import 'package:flutter/material.dart';

import '../sucess_page.dart';

////////////////////////////////////////////////////////////////////////////////
///DECLARAÇÃO DE VARIAVEIS
int qtdFrango = 0;
int qtdBebida = 0;
int qtdTotalItens = 0;
double valorTotal = 0;
double valorTaxaServico = 0;
double valorFrango = 0;
double valorBebida = 0;
double valorDesconto = 0.10;
String nome = "Frango";
////////////////////////////////////////////////////////////////////////////////

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPageFr(),
    );
  }
}

class CartPageFr extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class cartPageFr extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPageFr> {
  @override
  Widget build(BuildContext context) {
    var onPressed;
    var child;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 117, 48),
                    image: DecorationImage(
                        image: AssetImage("imagens/$nome.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            return_page_home();
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "$nome", //Texto da imagem
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              //Estrelas de avaliações do do cabeçalho
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  //icones de estrela
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text(
                                  " 250 Avaliações",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: Icon(
                              Icons.favorite, //icone de favorito
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "O melhor $nome da região",
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 27, 27), fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Seu Pedido",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 0.5,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    placesWidget("$nome", "$nome", preco_frango, 0),
                    SizedBox(
                      height: 5,
                    ),
                    placesWidget("Bebida", " Bebida", preco_bebida, 0),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quantidade Total:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text(
                          "$qtdTotalItens unidade(s)",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Valor Parcial:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text(
                          "R\$ $valorTotal",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "+Taxas de serviço 10% (Opcional)",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Text(
                          "R\$ $valorTaxaServico",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "+Taxa de entrega",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Text(
                          "Gratis",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 93, 173, 67)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /*Text(
                          "R\$ ***",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        )*/
                        Text(
                          "Total a Pagar",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "R\$ $valorTotal",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromARGB(255, 237, 6, 6)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Possui um codigo promocional?",
                      style: TextStyle(color: blue),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            openSuccessPage();
                            clear();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: greenBtn,
                            ),
                            child: Text(
                              "Confirmar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            clear();
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              color: greenBtn,
                            ),
                            child: Text(
                              "Limpar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name, double vlrItem, int qtdItem) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("imagens/$img.png"))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text("*"),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                ],
              ),
              Text(
                "  R\$ $vlrItem",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          /////////////////////////////ICONE INCREMENTO
          child: Icon(
            Icons.add_circle,
            size: 25,
          ),

          onTap: () {
            setState(() {
              if (name == "$nome") {
                qtdFrango++;
                valorFrango = preco_frango * qtdFrango;
              } else {
                qtdBebida++;
                valorBebida = preco_bebida * qtdBebida;
              }
              qtdTotalItens = qtdBebida + qtdFrango;
            });

            valorTotal = valorFrango + valorBebida;
            valorTaxaServico = valorTotal * 0.1;
          },
        ),
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Text(
              "Quantidade ",
              style: TextStyle(fontSize: 14, color: black),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: black),
              ),
              child: Text(
                name == "$nome" ? "$qtdFrango" : "$qtdBebida",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        )
      ],
    );
  }

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }

  void return_page_home() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  void clear() {
    qtdFrango = 0;
    qtdBebida = 0;
    qtdTotalItens = 0;
    valorTotal = 0;
    valorTaxaServico = 0;
    valorFrango = 0;
    valorBebida = 0;
  }
}
