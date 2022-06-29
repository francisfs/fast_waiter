import 'package:fast_waiter/Style.dart';
import 'package:fast_waiter/home_page.dart';
import 'package:fast_waiter/precos.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../sucess_page.dart';

class CartPageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPageB(),
    );
  }
}

class cartPageB extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPageB> {
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
                        image: AssetImage("imagens/bebida.png"),
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
                              "Hamburguer", //Texto da imagem
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
                      "**********************",
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
                    placesWidget("cerveja", "Heineken", preco_bebida, 0),
                    SizedBox(
                      height: 15,
                    ),
                    placesWidget("agua", "Agua", preco_hamb, 0),
                    SizedBox(
                      height: 15,
                    ),
                    placesWidget("coca", "Coca-Cola", preco_bebida, 0),
                    SizedBox(
                      height: 15,
                    ),
                    placesWidget("fanta", "Fanta", preco_bebida, 0),
                    SizedBox(
                      height: 15,
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
                    InkWell(
                      onTap: openSuccessPage,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: Text(
                          "Confirmar",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
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

////////////////////////////////////////////////////////////////////////////////
  ///DECLARAÇÃO DE VARIÁVEIS
  int qtdHamburguer = 0;
  int qtdBebida = 0;
  int qtdCerveja = 0;
  int qtdAqua = 0;
  int qtdCocacola = 0;
  int qtdFanta = 0;
  int qtdTotalItens = 0;
  double valorCerveja = 0;
  double valorAgua = 0;
  double valorCocacola = 0;
  double valorFanta = 0;
  double valorTotal = 0;
  double valorTaxaServico = 0;
  double valorHamburguer = 0;
  double valorBebida = 0;
  double valorDesconto = 0.10;
////////////////////////////////////////////////////////////////////////////////

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
            size: 40,
          ),

          onTap: () {
            setState(() {
              switch (name) {
                case 'Heineken':
                  qtdCerveja++;
                  valorCerveja = preco_bebida * qtdCerveja;
                  break;
                case 'Agua':
                  qtdAqua++;
                  valorAgua = preco_bebida * qtdAqua;
                  break;
                case 'Coca-Cola':
                  qtdCocacola++;
                  valorCocacola = preco_bebida * qtdCocacola;
                  break;
                case 'Fanta':
                  qtdFanta++;
                  valorFanta = preco_bebida * qtdFanta;
                  break;
              }
            });

            valorTotal = valorCerveja + valorAgua + valorCocacola + valorFanta;
            valorTaxaServico = valorTotal * 0.1;
            qtdTotalItens = qtdAqua + qtdCerveja + qtdCocacola + qtdFanta;
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
                incremenQtd('$name').toString(),
                //name == "Heineken" ? "$qtdCerveja" : "$qtdAqua",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        )
      ],
    );
  }

  int incremenQtd(String name) {
    int retornoqtd = 0;
    switch (name) {
      case 'Heineken':
        qtdCerveja;
        retornoqtd = qtdCerveja;
        break;
      case 'Agua':
        retornoqtd = qtdAqua;
        break;
      case 'Coca-Cola':
        retornoqtd = qtdCocacola;
        break;
      case 'Fanta':
        retornoqtd = qtdFanta;

        break;
    }

    return retornoqtd;
  }

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }

  void return_page_home() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
