import 'package:aplicacion_contador/src/pages/numeros_primos_page.dart';
import 'package:flutter/material.dart';

// import 'pages/home_page.dart';
// import 'pages/contador_page.dart';

//nosotros escribimos
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: ContadorPage(),
        // child: HomePage(),
        child: PrimosPage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
