import 'package:bookapp/Feature/home/data/reop/home_repo_impl.dart';
import 'package:bookapp/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocater() {
  getIt.registerSingleton<Api>(Api(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<Api>()));
}
