import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
  test('Espero que a entidade não seja nula', () async {

    CarroEntity carroEntity = CarroEntity(
      placa: "ABC123", 
      qtdPortas: 2, 
      valor: 1000,
    );

    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () async {

    CarroEntity carroEntity = CarroEntity(
      placa: "ABC123", 
      qtdPortas: 2, 
      valor: 1000,
    );

    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real seja 2000.00', () async {

    CarroEntity carroEntity = CarroEntity(
      placa: "ABC123", 
      qtdPortas: 2, 
      valor: 1000,
    );

    const resultadoEsperado = 2000.00;

    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor real seja 0.00 quando tiver 0 portas', () async {

    CarroEntity carroEntity = CarroEntity(
      placa: "ABC123", 
      qtdPortas: 0, 
      valor: 1000,
    );

    const resultadoEsperado = 0.00;

    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 30000.00', () async {

    CarroEntity carroEntity = CarroEntity(
      placa: "ABC123", 
      qtdPortas: 2, 
      valor: 15000,
    );

    const resultadoEsperado = 30000.00;

    carroEntity.setLogica();

    expect(carroEntity.valor, resultadoEsperado);
  });
}