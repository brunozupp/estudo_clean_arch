// Controller = responsável por tratar regra de negócio (Usecases)
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

  late CarroEntity carro;

  void getCarrosPorCor(String cor) {
    carro = _getCarrosPorCorUsecase(cor);
  }

  Future<void> salvarCarroFavorito(CarroEntity carro) async {
    final salvou = await _salvarCarroFavoritoUsecase(carro);
  }
}
