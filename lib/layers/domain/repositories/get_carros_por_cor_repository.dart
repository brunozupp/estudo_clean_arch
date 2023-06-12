import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {

  CarroEntity call(String cor);
}