import 'package:fast_waiter/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//void main() => runApp(const Splash());

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Waiter',
      home: Scaffold(
        backgroundColor: Colors.amber[400],
        body: ListView(children: [
          // Load a Lottie file from your assets
          //Lottie.asset('assets/LottieLogo1.json'),

          // Load a Lottie file from a remote url

          Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_UlXgnV.json'),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text("Cardapio",style: TextStyle(fontSize: 30),))

          // Load an animation and its images from a zip file
          //Lottie.asset('assets/lottiefiles/angel.zip'),
        ]),
      ),
    );
  }
}
