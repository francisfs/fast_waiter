import 'package:fast_waiter/home1%20copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splash.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  // widget para ocultar o status bar
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //SystemUiOverlay.bottom, //esta linha exibe a barra inferior
  //]
  // );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //retirar a barra debug
    home: (MyHomePage2()),
  ));
}
