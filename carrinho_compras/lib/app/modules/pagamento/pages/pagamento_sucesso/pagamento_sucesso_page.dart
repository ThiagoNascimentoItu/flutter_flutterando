import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pagamento_sucesso_controller.dart';

class PagamentoSucessoPage extends StatefulWidget {
  final String title;
  const PagamentoSucessoPage({Key key, this.title = "PagamentoSucesso"})
      : super(key: key);

  @override
  _PagamentoSucessoPageState createState() => _PagamentoSucessoPageState();
}

class _PagamentoSucessoPageState
    extends ModularState<PagamentoSucessoPage, PagamentoSucessoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Pagamento finalizado com sucesso ${controller.model.nome}!!!",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
          Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("Continuar comprando"),
                onPressed: () {
                  Modular.to.popUntil(ModalRoute.withName("/"));
                },
              ))
        ],
      ),
    );
  }
}
