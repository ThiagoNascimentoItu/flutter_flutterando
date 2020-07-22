import 'package:carrinho_compras/app/modules/loja/repositories/loja_repository.dart';
import 'package:carrinho_compras/app/modules/shared/stores/auth/auth_store.dart';
import 'package:dio/dio.dart';

import 'loja_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'loja_page.dart';

class LojaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LojaRepository(Dio())),
        Bind(
            (i) => LojaController(i.get<LojaRepository>(), i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => LojaPage(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<LojaModule>.of();
}
