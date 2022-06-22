import 'dart:async';
import 'package:fast_waiter/home_page.dart';
import 'package:fast_waiter/home1.dart';
import 'package:fast_waiter/home0.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 7, milliseconds: 900);
    return new Timer(duration, homeRoute);
  }

  homeRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage2()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591f),
                gradient: LinearGradient(colors: [
                  (new Color(0xffF5591f)),
                  (Color.fromARGB(255, 245, 233, 2))
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Lottie.network(
                  'https://assets1.lottiefiles.com/private_files/lf30_UlXgnV.json'),
            ),
          )
        ],
      ),
    );
  }
}
