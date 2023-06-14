import 'package:dartz/dartz.dart';
import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUsecaseImp implements GetCarrosPorCorUsecase {

  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUsecaseImp({
    required GetCarrosPorCorRepository getCarrosPorCorRepository,
  }) : _getCarrosPorCorRepository = getCarrosPorCorRepository;
  
  @override
  Either<Exception,CarroEntity> call(String cor) {
    return _getCarrosPorCorRepository.call(cor);
  }
  
}