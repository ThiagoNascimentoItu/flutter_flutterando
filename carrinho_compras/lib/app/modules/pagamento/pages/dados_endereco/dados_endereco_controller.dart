import 'package:carrinho_compras/app/modules/pagamento/models/pagamento_model.dart';
import 'package:carrinho_compras/app/modules/pagamento/stores/pagamento_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'dados_endereco_controller.g.dart';

class DadosEnderecoController = _DadosEnderecoControllerBase
    with _$DadosEnderecoController;

abstract class _DadosEnderecoControllerBase with Store {
  final PagamentoStore _pagamentoStore;

  _DadosEnderecoControllerBase(this._pagamentoStore);

  @computed
  PagamentoModel get model => _pagamentoStore.pagamento;

  var ruaController = TextEditingController();
  var numeroController = TextEditingController();

  @action
  void proximo() {
    model.rua = ruaController.text;
    model.numero = numeroController.text;

    Modular.link.pushNamed("/dadosPagamento", arguments: model);
  }

  @override
  // ignore: override_on_non_overriding_member
  void dispose() {
    ruaController.dispose();
    numeroController.dispose();
  }
}
