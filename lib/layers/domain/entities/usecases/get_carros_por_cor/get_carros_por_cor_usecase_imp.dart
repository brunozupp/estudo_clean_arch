import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/entities/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUsecaseImp implements GetCarrosPorCorUsecase {
  
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