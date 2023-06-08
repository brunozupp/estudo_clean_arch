import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/entities/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoUsecaseImp implements SalvarCarroFavoritoUsecase {

  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUsecaseImp({
    required SalvarCarroFavoritoRepository salvarCarroFavoritoRepository,
  }) : _salvarCarroFavoritoRepository = salvarCarroFavoritoRepository;

  @override
  Future<bool> call(CarroEntity carroEntity) async {

    // Dentro de um Usecase, posso chamar outros Usecase
    // Posso ter validações em cima das Entities

    return await _salvarCarroFavoritoRepository(carroEntity);
  }

}
