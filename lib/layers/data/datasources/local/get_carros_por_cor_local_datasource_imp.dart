
import 'package:estudo_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:estudo_clean_arch/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {

  final mapVermelho = {
    "placa": "ABC123",
    "quantidadeDePortas": 4,
    "valorFinal": 5000.00,
  };

  final mapAny = {
    "placa": "QWE",
    "quantidadeDePortas": 2,
    "valorFinal": 2000.00,
  };
  
  @override
  CarroDto call(String cor) {
    if(cor == "vermelho") {
      return CarroDto.fromMap(mapVermelho);
    }

    return CarroDto.fromMap(mapAny);
  }
  
}