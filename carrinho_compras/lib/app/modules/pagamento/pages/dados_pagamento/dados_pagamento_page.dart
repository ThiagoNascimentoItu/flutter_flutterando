import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dados_pagamento_controller.dart';

class DadosPagamentoPage extends StatefulWidget {
  final String title;
  const DadosPagamentoPage({Key key, this.title = "DadosPagamento"})
      : super(key: key);

  @override
  _DadosPagamentoPageState createState() => _DadosPagamentoPageState();
}

class _DadosPagamentoPageState
    extends ModularState<DadosPagamentoPage, DadosPagamentoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(decoration: InputDecoration(labelText: "Cartão")),
                TextFormField(decoration: InputDecoration(labelText: "CVV"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text("Container"),
              onPressed: controller.proximo,
            ),
          )
        ],
      ),
    );
  }
}