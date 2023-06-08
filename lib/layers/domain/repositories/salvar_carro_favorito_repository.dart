import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository {

  Future<bool> call(CarroEntity carroEntity);
}