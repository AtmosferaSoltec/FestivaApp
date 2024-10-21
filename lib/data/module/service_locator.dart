import 'package:festiva_flutter/data/repository/discoteca_repository_impl.dart';
import 'package:festiva_flutter/data/repository/repository_impl.dart';
import 'package:festiva_flutter/data/service/discoteca_service.dart';
import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';
import 'package:festiva_flutter/domain/usecase/get_all_discotecas_usecase.dart';
import 'package:festiva_flutter/domain/usecase/get_all_users_usecase.dart';
import 'package:festiva_flutter/providers/discoteca_provider.dart';
import 'package:festiva_flutter/providers/provider.dart';
import 'package:get_it/get_it.dart';
import '../service/api_service.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Services
  sl.registerLazySingleton(() => ApiService());
  sl.registerLazySingleton(() => DiscotecaService());

  // Repositories
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()));
  sl.registerLazySingleton<CategoriaRepository>(
      () => CategoriaRepositoryImpl(sl()));
  sl.registerLazySingleton<DiscotecaRepository>(
      () => DiscotecaRepositoryImpl(sl()));

  // UseCases
  sl.registerLazySingleton(() => GetAllUsersUsecase(sl()));
  // Listar Discotecas
  sl.registerLazySingleton(() => GetAllDiscotecasUsecase(sl()));

  // ViewModels // Providers
  sl.registerFactory(() => UserProvider(sl()));
  sl.registerFactory(() => CategoriaProvider(sl()));
  sl.registerFactory(() => DiscotecaProvider(sl()));
}
