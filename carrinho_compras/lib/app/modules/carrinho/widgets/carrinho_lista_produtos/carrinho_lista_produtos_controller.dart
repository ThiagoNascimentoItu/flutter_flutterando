import 'package:carrinho_compras/app/shared/models/carrinho_model/carrinho_model.dart';
import 'package:carrinho_compras/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_lista_produtos_controller.g.dart';

class CarrinhoListaProdutosController = _CarrinhoListaProdutosControllerBase
    with _$CarrinhoListaProdutosController;

abstract class _CarrinhoListaProdutosControllerBase with Store {
  final CarrinhoStore _carrinhoStore;

  _CarrinhoListaProdutosControllerBase(this._carrinhoStore);

  @computed
  ObservableList<CarrinhoModel> get listaProdutos =>
      _carrinhoStore.produtoNoCarrinho;
}
