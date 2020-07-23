import 'package:carrinho_compras/app/modules/pagamento/models/pagamento_model.dart';
import 'package:carrinho_compras/app/modules/pagamento/stores/pagamento_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'dados_pagamento_controller.g.dart';

class DadosPagamentoController = _DadosPagamentoControllerBase
    with _$DadosPagamentoController;

abstract class _DadosPagamentoControllerBase with Store {
  final PagamentoStore _pagamentoStore;

  _DadosPagamentoControllerBase(this._pagamentoStore);

  @computed
  PagamentoModel get model => _pagamentoStore.pagamento;

  var cartaoController = TextEditingController();
  var cvvController = TextEditingController();

  @action
  void proximo() {
    model.cartao = cartaoController.text;
    model.cvv = cvvController.text;

    Modular.link.pushNamed("/sucesso", arguments: model);
  }

  @override
  // ignore: override_on_non_overriding_member
  void dispose() {
    cartaoController.dispose();
    cvvController.dispose();
  }
}
