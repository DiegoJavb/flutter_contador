import 'package:aplicacion_contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

//nosotros escribimos
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
