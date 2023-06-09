class CarroEntity {

  String placa;  
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  // Tudo que depende dela mesmo, posso ter dentro da entidade

  double get valorReal => valor * qtdPortas;
  
  void setLogica() {
    if(valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
