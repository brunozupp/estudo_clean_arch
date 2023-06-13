import 'package:estudo_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:estudo_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:estudo_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:estudo_clean_arch/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatefulWidget {

  final CarroController controller = CarroController(
    getCarrosPorCorUsecase: GetCarrosPorCorUsecaseImp(
      getCarrosPorCorRepository: GetCarrosPorCorRepositoryImp(
        getCarrosPorCorDataSource: GetCarrosPorCorLocalDataSourceImp(),
      ),
    ), 
    salvarCarroFavoritoUsecase: SalvarCarroFavoritoUsecaseImp(
      salvarCarroFavoritoRepository: SalvarCarroFavoritoRepositoryImp(),
    ),
  );

  CarroPage({super.key});

  @override
  State<CarroPage> createState() => _CarroPageState();
}

class _CarroPageState extends State<CarroPage> {

  @override
  void initState() {
    super.initState();

    widget.controller.getCarrosPorCor("vermelho");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(widget.controller.carro.placa),
      ),
    );
  }
}