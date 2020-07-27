import 'package:carrinho_compras/app/modules/carrinho/carrinho_module.dart';
import 'package:carrinho_compras/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detalhe_produto_controller.dart';
import 'detalhe_produto_page.dart';

class DetalheProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetalheProdutoController(i.get<CarrinhoStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => DetalheProdutoPage(
                  produtoModel: args.data,
                )),
        Router("/carrinho",
            module: CarrinhoModule(), transition: TransitionType.fadeIn)
      ];

  static Inject get to => Inject<DetalheProdutoModule>.of();
}
