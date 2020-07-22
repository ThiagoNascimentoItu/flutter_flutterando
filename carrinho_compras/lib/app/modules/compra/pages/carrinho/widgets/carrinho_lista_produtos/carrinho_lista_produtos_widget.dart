import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_lista_produtos_controller.dart';

class CarrinhoListaProdutosWidget extends StatefulWidget {
  final String title;
  const CarrinhoListaProdutosWidget(
      {Key key, this.title = "CarrinhoListaProdutos"})
      : super(key: key);

  @override
  _CarrinhoListaProdutosWidgetState createState() =>
      _CarrinhoListaProdutosWidgetState();
}

class _CarrinhoListaProdutosWidgetState extends ModularState<
    CarrinhoListaProdutosWidget, CarrinhoListaProdutosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
