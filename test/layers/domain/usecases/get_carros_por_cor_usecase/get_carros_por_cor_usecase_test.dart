import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if(cor == "vermelho") {
      return CarroEntity(
        placa: "abc123",
        qtdPortas: 4,
        valor: 50000,
      );
    }

    return CarroEntity(
      placa: "QWE",
      qtdPortas: 2,
      valor: 20000,
    );
  }
}

void main() {
  
  test("Deve retornar uma instância de carro quando passado qualquer cor", () {

    GetCarrosPorCorUsecase usecase = GetCarrosPorCorUsecaseImp(
      getCarrosPorCorRepository: GetCarrosPorCorRepositoryImp(),
    );

    final result = usecase("azul");

    expect(result, isInstanceOf<CarroEntity>());
  });

  test("Deve retornar um carro de 4 portas quando a cor for vermelho", () {

    GetCarrosPorCorUsecase usecase = GetCarrosPorCorUsecaseImp(
      getCarrosPorCorRepository: GetCarrosPorCorRepositoryImp(),
    );

    final result = usecase("vermelho");

    expect(result.qtdPortas, 4);
  });

  test("Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho", () {

    GetCarrosPorCorUsecase usecase = GetCarrosPorCorUsecaseImp(
      getCarrosPorCorRepository: GetCarrosPorCorRepositoryImp(),
    );

    final result = usecase("verde");

    expect(result.qtdPortas, 2);
  });
}