import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_lista_produtos_controller.dart';
import 'carrinho_lista_produtos_widget.dart';

class CarrinhoListaProdutosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoListaProdutosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CarrinhoListaProdutosWidget()),
      ];

  static Inject get to => Inject<CarrinhoListaProdutosModule>.of();
}
