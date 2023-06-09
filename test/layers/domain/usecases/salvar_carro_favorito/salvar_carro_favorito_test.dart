import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  
  @override
  Future<bool> call(CarroEntity carroEntity) async => carroEntity.valor > 0;
}

void main() {
  
  test("Espero que salve o carro com sucesso", () async {

    SalvarCarroFavoritoUsecase usecase = SalvarCarroFavoritoUsecaseImp(
      salvarCarroFavoritoRepository: SalvarCarroFavoritoRepositoryImp()
    );

    final CarroEntity carroEntity = CarroEntity(
      placa: "placa",
      qtdPortas: 2,
      valor: 1,
    );

    final result = await usecase(carroEntity);
    
    // Cada teste meu precisa ter apenas um expect.
    // Se tiver mais de um significa que está fazendo mais de uma coisa, o que fere o Single Responsability
    expect(result, true); 
  });

  test("Espero que não salve o carro quando o valor for <= 0", () async {

    SalvarCarroFavoritoUsecase usecase = SalvarCarroFavoritoUsecaseImp(
      salvarCarroFavoritoRepository: SalvarCarroFavoritoRepositoryImp()
    );

    final CarroEntity carroEntity = CarroEntity(
      placa: "placa",
      qtdPortas: 2,
      valor: 0,
    );

    final result = await usecase(carroEntity);
    
    expect(result, false); 
  });
}