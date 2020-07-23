import 'package:carrinho_compras/app/modules/produto/models/produto_model.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_model.g.dart';

class CarrinhoModel = _CarrinhoModelBase with _$CarrinhoModel;

abstract class _CarrinhoModelBase with Store {
  final ProdutoModel produto;
  @observable
  int _quantidade = 1;
  @computed
  int get quantide => _quantidade;
  _CarrinhoModelBase(this.produto);

  @action
  void adicionar() {
    _quantidade++;
  }

  @action
  void remover() {
    _quantidade--;
  }
}
