import 'package:dartz/dartz.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {

  @override
  Future<Either<Exception,bool>> call(CarroEntity carroEntity) async {

    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception("Repository error"));
    }
  }
  
}