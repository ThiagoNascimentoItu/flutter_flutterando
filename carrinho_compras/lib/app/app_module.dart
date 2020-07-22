import 'package:carrinho_compras/app/app_widget.dart';
import 'package:carrinho_compras/app/modules/shared/stores/carrinho/carrinho_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/auth/auth_module.dart';
import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/pagamento/pagamento_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [Bind((i) => AppController()), Bind((i) => CarrinhoStore())];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LojaModule(),transition: TransitionType.fadeIn),
        Router("/login",module: AuthModule(),transition: TransitionType.fadeIn),
        Router("/produto", module: ProdutoModule(),transition: TransitionType.rightToLeft),
        Router("/compra", module: CompraModule(),transition: TransitionType.fadeIn),
        Router("/pagamento",module: PagamentoModule(),transition: TransitionType.fadeIn)
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
