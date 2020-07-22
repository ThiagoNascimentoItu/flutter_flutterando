import 'package:flutter_modular/flutter_modular.dart';

import 'pages_controller.dart';
import 'pages_page.dart';

class PagesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PagesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PagesPage()),
      ];

  static Inject get to => Inject<PagesModule>.of();
}
