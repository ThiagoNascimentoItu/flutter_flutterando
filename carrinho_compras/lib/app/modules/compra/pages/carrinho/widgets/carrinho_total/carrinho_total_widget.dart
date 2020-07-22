import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_total_controller.dart';

class CarrinhoTotalWidget extends StatefulWidget {
  final String title;
  const CarrinhoTotalWidget({Key key, this.title = "CarrinhoTotal"})
      : super(key: key);

  @override
  _CarrinhoTotalWidgetState createState() => _CarrinhoTotalWidgetState();
}

class _CarrinhoTotalWidgetState
    extends ModularState<CarrinhoTotalWidget, CarrinhoTotalController> {
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
