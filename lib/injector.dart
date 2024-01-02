
import 'package:argedor_task/src/features/first/data/repository_impl/first_repository_impl.dart';
import 'package:argedor_task/src/features/first/data/source/dummy.dart';
import 'package:argedor_task/src/features/first/domain/repositories/first_repository.dart';
import 'package:argedor_task/src/features/first/domain/usecase/first_usecase.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> initializeGetIt() async {
  // Data layer
  getIt.registerLazySingleton<DummyChartData>(() => DummyChartDataImpl());
  getIt.registerFactory<FirstRepository>(() => FirstRepositoryImpl(
    service: getIt(),

  ));
  // Domain layer
  getIt.registerFactory<FirstUseCase>(() => FirstUseCase(repository: getIt()));

 
}
