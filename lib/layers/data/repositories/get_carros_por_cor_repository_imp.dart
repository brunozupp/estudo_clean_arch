import 'package:estudo_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {

  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp({
    required GetCarrosPorCorDataSource getCarrosPorCorDataSource,
  }) : _getCarrosPorCorDataSource = getCarrosPorCorDataSource;

  @override
  CarroEntity call(String cor) {

    // Eu poderia validar algum dado aqui, como por exemplo verificar se
    // algum dado veio ou não, devolver uma exceção caso uma tratativa de dado
    // não seja válido.

    return _getCarrosPorCorDataSource(cor);
  }
}