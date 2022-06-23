import 'package:fast_waiter/cards/card_hamb.dart';
import 'package:fast_waiter/opcao1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 216, 83, 22),
        elevation: 0,
        /*leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black,
            size: 27,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 27,
              color: Colors.black,
            ),
            onPressed: () {},
          )*
        ],*/
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cardápio Digital",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      child: Column(
                        children: [
                          /*  Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: greenBtn),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  Text(
                                    " Comprar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 5),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: greenBtn.withOpacity(0.7)),
                          )*/
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Especialidades da casa em destaque",
                  style: TextStyle(
                    color: Color.fromARGB(159, 152, 155, 182),
                    fontSize: 23,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 350,
                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.deepOrange,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0,
                                  offset: Offset(0, 10),
                                  blurRadius: 0,
                                  color: gold.withOpacity(0.4))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "imagens/yakisoba.png"))),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Yakissoba",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: gold,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: gold,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: gold,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Text(
                                  " 250 Avaliações",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Yakissoba Clássico com carne e frango, legumes frescos e champignons",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 165,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: green,
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 0,
                                      offset: Offset(0, 10),
                                      blurRadius: 0,
                                      color: green.withOpacity(0.4))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "imagens/frango.png"))),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Frango Frito",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: gold,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: gold,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: gold,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: gold,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 165,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: black,
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 0,
                                          offset: Offset(0, 10),
                                          blurRadius: 0,
                                          color: black.withOpacity(0.4))
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "imagens/feijoada.png"))),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Feijoada",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: gold,
                                          size: 14,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: gold,
                                          size: 14,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: gold,
                                          size: 14,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: gold,
                                          size: 14,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Mais pratos",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
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
                placesWidget("hamburguer", "Hamburguer"),
                SizedBox(
                  child: Text(""),
                  height: 20,
                ),
                placesWidget("carne", "Costela Assada"),
                SizedBox(
                  height: 20,
                ),
                placesWidget("bebidas", " Bebidas"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name) {
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
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              /*Text(
                "Lorem ipsum sits dolar amet is for publishing",
                style: TextStyle(fontSize: 12),
              )*/
            ],
          ),
        ),
        InkWell(
          onTap: openHotelPage,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: greenBtn),
            child: Text(
              "Adicionar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }

  void openHotelPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageH()));
  }
}
