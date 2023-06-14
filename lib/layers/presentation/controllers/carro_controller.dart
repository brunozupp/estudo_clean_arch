// Controller = responsável por tratar regra de negócio (Usecases)
import 'dart:developer';

import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {

  final GetCarrosPorCorUsecase _getCarrosPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController({
    required GetCarrosPorCorUsecase getCarrosPorCorUsecase,
    required SalvarCarroFavoritoUsecase salvarCarroFavoritoUsecase,
  }) : _getCarrosPorCorUsecase = getCarrosPorCorUsecase,
       _salvarCarroFavoritoUsecase = salvarCarroFavoritoUsecase;

  CarroEntity? carro;

  void getCarrosPorCor(String cor) {
    final result = _getCarrosPorCorUsecase(cor);

    result.fold(
      (error) => log(error.toString()), 
      (value) => carro = value,
    );
  }

  Future<void> salvarCarroFavorito(CarroEntity carro) async {
    await _salvarCarroFavoritoUsecase(carro);
  }
}
