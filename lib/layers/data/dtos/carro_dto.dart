import 'dart:convert';

import 'package:estudo_clean_arch/layers/domain/entities/carro_entity.dart';

// A Dto fica responsável pela (des)serialização
// Já minha entidade, fica pura com a regra de negócio apenas
class CarroDto extends CarroEntity {

  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
    placa: placa,
    qtdPortas: quantidadeDePortas,
    valor: valorFinal,
  );

  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
    };
  }

  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placa: map['placa'] ?? '',
      quantidadeDePortas: map['quantidadeDePortas']?.toInt() ?? 0,
      valorFinal: map['valorFinal']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarroDto.fromJson(String source) => CarroDto.fromMap(json.decode(source));
}
