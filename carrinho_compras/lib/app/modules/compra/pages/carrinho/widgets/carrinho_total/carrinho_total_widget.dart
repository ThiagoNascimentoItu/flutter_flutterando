import 'package:flutter/material.dart';

class CarrinhoTotalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text("Total carrinho:"), Text("R\$ 120,00")],
          )
        ],
      ),
    );
  }
}
