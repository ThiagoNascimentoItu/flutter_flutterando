import 'package:carrinho_compras/app/modules/carrinho/widgets/carrinho_lista_produtos/carrinho_lista_produtos_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CarrinhoListaProdutosWidget extends StatefulWidget {
  @override
  _CarrinhoListaProdutosWidgetState createState() =>
      _CarrinhoListaProdutosWidgetState();
}

class _CarrinhoListaProdutosWidgetState extends ModularState<
    CarrinhoListaProdutosWidget, CarrinhoListaProdutosController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: controller.listaProdutos?.length ?? 0,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var current = controller.listaProdutos[index];
        return Card(
            margin: EdgeInsets.all(5),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    controller.listaProdutos[index].produto.imagem),
              ),
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${current.produto.nome}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "R\$ ${current.produto.preco}",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: Colors.red[400],
                    ),
                    onPressed: () {
                      current.remover();
                    },
                  ),
                  Observer(
                    builder: (BuildContext context) {
                      return Text(
                        " ${current.quantide}",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.blue[400],
                    ),
                    onPressed: () {
                      current.adicionar();
                    },
                  ),
                ],
              ),
            ));
      },
    );
  }
}
