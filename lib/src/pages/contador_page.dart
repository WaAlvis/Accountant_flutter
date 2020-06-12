import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contador de vasos de agua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de vasos consumido hoy: ',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _rowBottons(),
    );
  }

  Widget _rowBottons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.exposure_neg_1),
          onPressed: _subtract,
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_plus_1),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _subtract() {
    if (_conteo > 0) {
      setState(() => _conteo--);
    }
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
