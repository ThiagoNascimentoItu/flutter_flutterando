import 'package:carrinho_compras/app/modules/produto/models/produto_model.dart';
import 'package:carrinho_compras/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'detalhe_produto_controller.g.dart';

class DetalheProdutoController = _DetalheProdutoControllerBase with _$DetalheProdutoController;

abstract class _DetalheProdutoControllerBase with Store {
  final CarrinhoStore _carrinhoStore;

  _DetalheProdutoControllerBase(this._carrinhoStore);

  void adicionarProdutoCarrinho(produtoModel){
    _carrinhoStore.adicionarProdutoNoCarrinho(produtoModel);
  }
}
