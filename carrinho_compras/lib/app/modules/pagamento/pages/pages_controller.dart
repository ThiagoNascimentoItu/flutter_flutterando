import 'package:mobx/mobx.dart';

part 'pages_controller.g.dart';

class PagesController = _PagesControllerBase with _$PagesController;

abstract class _PagesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
