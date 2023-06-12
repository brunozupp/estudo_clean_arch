import 'package:estudo_clean_arch/layers/data/dtos/carro_dto.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    
    var map = {
      "placa": "ABC123",
      "quantidadeDePortas": 2,
      "valorFinal": 1000.00,
    };

    return CarroDto.fromMap(map);
  }
}