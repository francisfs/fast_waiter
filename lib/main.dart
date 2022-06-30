import 'package:fast_waiter/cards/card_bebi.dart';
import 'package:fast_waiter/cards/card_cost.dart';
import 'package:fast_waiter/cards/card_feijo.dart';
import 'package:fast_waiter/cards/card_frang.dart';
import 'package:fast_waiter/cards/card_hamb.dart';
import 'package:fast_waiter/home_page.dart';
import 'package:fast_waiter/qrcode_page.dart';
import 'package:fast_waiter/splash.dart';
import 'package:fast_waiter/sucess_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // widget para ocultar o status bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ] //esta linha exibe a barra inferior

      );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //retirar a barra debug
    home: (QRCodePage()),
  ));
}
//(HomePage()),