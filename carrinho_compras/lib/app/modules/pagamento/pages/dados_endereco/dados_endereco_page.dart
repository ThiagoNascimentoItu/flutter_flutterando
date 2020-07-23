import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dados_endereco_controller.dart';

class DadosEnderecoPage extends StatefulWidget {
  final String title;
  const DadosEnderecoPage({Key key, this.title = "DadosEndereco"})
      : super(key: key);

  @override
  _DadosEnderecoPageState createState() => _DadosEnderecoPageState();
}

class _DadosEnderecoPageState
    extends ModularState<DadosEnderecoPage, DadosEnderecoController> {
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
                TextFormField(
                    controller: controller.ruaController,
                    decoration: InputDecoration(labelText: "Rua")),
                TextFormField(
                    controller: controller.numeroController,
                    decoration: InputDecoration(labelText: "Número"))
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("Continuar"),
                onPressed: controller.proximo,
              ))
        ],
      ),
    );
  }
}
