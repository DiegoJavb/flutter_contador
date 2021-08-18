import 'package:flutter/material.dart';
import 'dart:math';

class PrimosPage extends StatefulWidget {
  @override
  createState() => _PrimosPageState();
}

class _PrimosPageState extends State<PrimosPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  final myMaxValueController = TextEditingController();
  int _conteo = 0;

  void dispose() {
    // Limpia el controlador cuando el Widget se descarte
    myMaxValueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Números primos'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('Entre', style: _estiloTexto),
          Text('0', style: _estiloTexto),
          Text('y', style: _estiloTexto),
          SizedBox(height: 20.0),
          Container(
            width: 100.0,
            child: TextField(
              style: _estiloTexto,
              controller: myMaxValueController,
            ),
          ),
          SizedBox(height: 100.0),
          Text('$_conteo', style: _estiloTexto),
          SizedBox(height: 20.0),
        ],
      )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _cero),
        Expanded(
          child: SizedBox(
            width: 20.0,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton.extended(
          label: Text('Siguiente'),
          onPressed: catchPrimo,
        ),
      ],
    );
  }

  void _cero() {
    setState(() => _conteo = 0);
  }

  void catchPrimo() {
    int contador = 0;
    int _num = new Random().nextInt(
      int.parse(myMaxValueController.text),
    );

    for (int i = 1; i <= _num; i++) {
      if (_num % i == 0) {
        contador++;
      }
    }
    if (contador == 2) {
      setState(() {
        _conteo = _num;
      });
    } else {
      catchPrimo();
    }
  }
}
