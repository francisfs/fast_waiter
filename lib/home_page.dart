import 'package:fast_waiter/cards/card_bebi.dart';
import 'package:fast_waiter/cards/card_cost.dart';
import 'package:fast_waiter/cards/card_feijo.dart';
import 'package:fast_waiter/cards/card_frang.dart';
import 'package:fast_waiter/cards/card_hamb.dart';
import 'package:fast_waiter/cards/card_yaki.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                        children: [],
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
                                    "imagens/yakisoba.png",
                                  )),
                                ),
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
                            // segunda coluna
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
                        alignment: Alignment.bottomRight,
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
                InkWell(
                  //botão adcionar
                  onTap: cardRoutH,
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
                ),
                SizedBox(
                  child: Text(""),
                  height: 20,
                ),
                placesWidget("costela", "Costela Assada"),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  //botão adcionar
                  onTap: cardRoutC,
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
                ),
                SizedBox(
                  height: 20,
                ),
                placesWidget("bebidas", " Bebidas"),
                InkWell(
                  //botão adcionar
                  onTap: cardRoutB,
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
                ),
                SizedBox(
                  height: 20,
                ),
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
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("imagens/$img.png"))),
        ),
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Row(
              // contem os icones estrelas
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
                  color: Color.fromARGB(255, 31, 21, 21),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color.fromARGB(255, 26, 13, 13),
                ),
              ],
            ),
            Text("")
          ]),
        ),
        /*InkWell(
          //botão adcionar
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
        ),*/
      ],
    );
  }

  void cardRoutB() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageB()));
  }

  void cardRoutC() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageC()));
  }

  void cardRoutF() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageF()));
  }

  void cardRoutFr() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageFr()));
  }

  void cardRoutH() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageH()));
  }

  void cardRoutY() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cartPageY()));
  }
}
