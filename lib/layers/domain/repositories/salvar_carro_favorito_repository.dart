import 'package:dartz/dartz.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository {

  Future<Either<Exception,bool>> call(CarroEntity carroEntity);
}