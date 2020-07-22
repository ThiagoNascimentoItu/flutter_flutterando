import 'package:carrinho_compras/app/modules/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'compra_controller.g.dart';

class CompraController = _CompraControllerBase with _$CompraController;

abstract class _CompraControllerBase with Store {
  final CarrinhoStore carrinhoStore;

  _CompraControllerBase(this.carrinhoStore);

}
