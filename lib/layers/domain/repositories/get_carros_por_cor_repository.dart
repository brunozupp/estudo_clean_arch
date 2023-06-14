import 'package:dartz/dartz.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {

  Either<Exception,CarroEntity> call(String cor);
}