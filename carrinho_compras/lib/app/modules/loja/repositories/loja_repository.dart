import 'package:carrinho_compras/app/modules/loja/models/loja_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LojaRepository extends Disposable {
  final Dio dio;

  LojaRepository(this.dio);

  Future<List<LojaModel>> obterLojas() async {
    return _data;
  }

  @override
  void dispose() {}
}

get _data => [
      LojaModel(1, "Cat Lovers", "cat_lovers.png"),
      LojaModel(2, "Dog Foods", "dog_foods.png"),
      LojaModel(3, "Pet Lovers", "pet_lovers.png"),
      LojaModel(4, "Pet Shops", "pet_shops.png"),
    ];
