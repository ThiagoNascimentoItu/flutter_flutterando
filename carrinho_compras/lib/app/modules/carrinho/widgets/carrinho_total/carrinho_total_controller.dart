import 'package:carrinho_compras/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_total_controller.g.dart';

class CarrinhoTotalController = _CarrinhoTotalControllerBase
    with _$CarrinhoTotalController;

abstract class _CarrinhoTotalControllerBase with Store {
  final CarrinhoStore _carrinhoStore;

  _CarrinhoTotalControllerBase(this._carrinhoStore);

  @computed
  double get total => _carrinhoStore.total;
}
