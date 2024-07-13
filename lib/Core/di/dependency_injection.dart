import 'package:assessmenttest/Core/networking/dio_factory.dart';
import 'package:assessmenttest/List/data/apis/list_api_service.dart';
import 'package:assessmenttest/List/data/repos/list_repo.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIT() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ListApiService>(() => ListApiService(dio));

  getIt.registerLazySingleton<ListRepo>(() => ListRepo(getIt()));
  getIt.registerLazySingleton<ListCubit>(() => ListCubit(getIt()));
}
