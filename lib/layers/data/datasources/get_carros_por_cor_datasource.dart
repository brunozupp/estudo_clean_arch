import 'package:dartz/dartz.dart';
import 'package:estudo_clean_arch/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {

  Either<Exception,CarroDto> call(String cor);
}