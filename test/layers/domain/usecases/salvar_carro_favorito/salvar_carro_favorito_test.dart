import 'package:estudo_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

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
    result.fold(
      (l) => expect(l, isException), 
      (salvou) => expect(salvou, true)
    );
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
    
    result.fold(
      (l) => expect(l, isException), 
      (salvou) => expect(salvou, false)
    );
  });
}