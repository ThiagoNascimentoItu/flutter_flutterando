import 'package:carrinho_compras/app/modules/produto/models/produto_model.dart';
import 'package:carrinho_compras/app/shared/models/carrinho_model/carrinho_model.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStoreBase with _$CarrinhoStore;

abstract class _CarrinhoStoreBase with Store {
  var produtoNoCarrinho = ObservableList<CarrinhoModel>();

  void adicionarProdutoNoCarrinho(ProdutoModel produtoModel) {
    var index = produtoNoCarrinho.indexWhere(
        (carrinhoModel) => carrinhoModel.produto.id == produtoModel.id);

    if (index > 0) {
      produtoNoCarrinho.elementAt(index).adicionar();
    } else {
      produtoNoCarrinho.add(CarrinhoModel(produtoModel));
    }
  }

  @computed
  double get total => produtoNoCarrinho
      .map((element) =>
          double.parse(element.produto.preco.replaceAll(",", ".")) *
          element.quantide)
      .reduce((value, element) => value + element);
}
