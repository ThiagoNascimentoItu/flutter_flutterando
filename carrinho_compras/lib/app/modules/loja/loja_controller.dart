import 'package:carrinho_compras/app/modules/loja/repositories/loja_repository.dart';
import 'package:carrinho_compras/app/modules/shared/stores/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

import 'models/loja_model.dart';

part 'loja_controller.g.dart';

class LojaController = _LojaControllerBase with _$LojaController;

abstract class _LojaControllerBase with Store {
  final AuthStore _authStore;
  final LojaRepository repository;

  _LojaControllerBase(this.repository, this._authStore) {
    init();
  }

  @computed
  bool get islogger => _authStore.isLogged;

  @observable
  ObservableList<LojaModel> lojas;

  @action
  Future init() async {
    lojas = (await repository.obterLojas()).asObservable();
  }
}
