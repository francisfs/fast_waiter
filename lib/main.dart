
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splash.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
     SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //retirar a barra debug
    home: SplashScreen(),
  ));
}
