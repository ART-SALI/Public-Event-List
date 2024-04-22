
import 'package:public_event_list/features/sample_feature/data/datasource/_datasource.dart';
import 'package:public_event_list/features/sample_feature/data/repositories/_repository_impl.dart';
import 'package:public_event_list/features/sample_feature/domain/repositories/_repository.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_1/cubit/_cubit.dart';
import 'package:public_event_list/injection_container.dart';
import 'package:dio/dio.dart';


mixin SampleInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();
    final Dio dio = sl<Dio>(instanceName: globalDio);

    // cubits
    sl.registerLazySingleton(() => SampleCubit(repository: sl()));

    // use cases

    // repositories
    sl.registerLazySingleton<Repository>(
            () => RepositoryImpl(datasource: sl()));

    // data sources
    sl.registerLazySingleton<Datasource>(() => DatasourceImpl(dio: dio));
  }
}
