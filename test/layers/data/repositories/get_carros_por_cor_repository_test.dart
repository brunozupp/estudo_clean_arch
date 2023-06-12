import 'package:estudo_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test("Devolva um carro independente da cor", () {

    var result = repository("vermelho");

    expect(result, isNotNull);
  });
}