import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_total_controller.dart';
import 'carrinho_total_widget.dart';

class CarrinhoTotalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoTotalController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CarrinhoTotalWidget()),
      ];

  static Inject get to => Inject<CarrinhoTotalModule>.of();
}
