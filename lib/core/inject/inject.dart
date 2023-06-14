import 'package:estudo_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:estudo_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:estudo_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:estudo_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:estudo_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:estudo_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:estudo_clean_arch/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {

  Inject._();

  static void init() {
    GetIt getIt = GetIt.instance;

    // Datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(() => GetCarrosPorCorLocalDataSourceImp());

    // Repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(() => GetCarrosPorCorRepositoryImp(
      getCarrosPorCorDataSource: getIt(),
    ));

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(() => SalvarCarroFavoritoRepositoryImp());

    // Usecases
    getIt.registerLazySingleton<GetCarrosPorCorUsecase>(() => GetCarrosPorCorUsecaseImp(
      getCarrosPorCorRepository: getIt(),
    ));

    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(() => SalvarCarroFavoritoUsecaseImp(
      salvarCarroFavoritoRepository: getIt(),
    ));

    // Controllers
    getIt.registerFactory<CarroController>(() => CarroController(
      getCarrosPorCorUsecase: getIt(), 
      salvarCarroFavoritoUsecase: getIt(),
    ));
  }
}