import 'package:carrinho_compras/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_controller.dart';
import 'carrinho_page.dart';
import 'widgets/carrinho_lista_produtos/carrinho_lista_produtos_controller.dart';
import 'widgets/carrinho_total/carrinho_total_controller.dart';

class CarrinhoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoListaProdutosController(i.get<CarrinhoStore>())),
        Bind((i) => CarrinhoTotalController(i.get<CarrinhoStore>())),
        Bind((i) => CarrinhoController()),
      ];

  @override
  List<Router> get routers => [
        Router("/:title",
            child: (_, args) => CarrinhoPage(title: args.params["title"])),
      ];

  static Inject get to => Inject<CarrinhoModule>.of();
}
