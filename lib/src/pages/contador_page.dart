import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks:', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
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
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _quitar),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar)
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _quitar() {
    setState(() => _conteo--);
  }

  void _cero() {
    setState(() => _conteo = 0);
  }
}
