import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/services/api_service.dart';
import 'package:pharma_app/core/services/bloc_observer_service.dart';
import 'package:pharma_app/core/services/caching_service.dart';
import 'package:pharma_app/core/services/network_info_service.dart';
import 'package:pharma_app/core/services/router_service.dart';
import 'package:pharma_app/core/services/status_handler_service.dart';
import 'package:pharma_app/features/Auth/data/datasoursce/auth_local_data_source.dart';
import 'package:pharma_app/features/Auth/data/datasoursce/auth_remoute_data_source.dart';
import 'package:pharma_app/features/Auth/data/repoImp/auth_repo_imp.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_login_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_pharmainfo_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_reset_password_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_send_code_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_verify_code_usescase.dart';
import 'package:pharma_app/features/Auth/presentation/screen/login/cubit/login_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/register/cubit/registerr_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/reset/cubit/reset_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/verify/cubit/verify_cubit.dart';
import 'package:pharma_app/features/main/data/data_sources/main_remote_data_source.dart';
import 'package:pharma_app/features/main/data/repository/main_repo_impl.dart';
import 'package:pharma_app/features/main/domain/repository/main_repo.dart';
import 'package:pharma_app/features/main/domain/usecases/get_home_data_use_case.dart';
import 'package:pharma_app/features/main/presentation/cubits/main_cubit/main_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/Auth/domain/usescase/auth_register_usescase.dart';

abstract class InjectionContainer {
  static GetIt getIt = GetIt.instance;

  static Future<void> initAppDependencies() async {
    await initCoreServices();
    await initMainDependencies();
    await initAuthDependenies();
  }

  static Future<void> initCoreServices() async {
    /// Helper Services
    GetIt.instance.registerSingleton(Logger());
    GetIt.instance.registerSingleton(StatusHandlerService());
    GetIt.instance.registerSingleton(BlocObserverService());
    Bloc.observer = getIt<BlocObserverService>();

    /// Cache Services
    var perf = await SharedPreferences.getInstance();
    GetIt.instance.registerSingleton<SharedPreferences>(perf);
    GetIt.instance.registerSingleton<CacheService>(
      CacheServiceImpl(
        pref: getIt<SharedPreferences>(),
      ),
    );

    /// API Services
    GetIt.instance.registerSingleton(InternetConnectionChecker());
    GetIt.instance.registerSingleton<NetworkInfoService>(
      NetworkInfoServiceImpl(
        getIt<InternetConnectionChecker>(),
      ),
    );
    GetIt.instance.registerSingleton(Client());
    GetIt.instance.registerSingleton<ApiService>(
      ApiServiceImpl(
        client: getIt<Client>(),
        networkInfo: getIt<NetworkInfoService>(),
      ),
    );

    /// Router Services
    GetIt.instance.registerSingleton<RouterService>(
      RouterService(
        cacheService: getIt<CacheService>(),
      ),
    );
  }

  static Future<void> initAuthDependenies() async {
    //Auth UsesCase

    getIt.registerLazySingleton<AuthRegisterUsescase>(
      () => AuthRegisterUsescase(authenticationRepo: getIt()),
    );
    getIt.registerLazySingleton<AuthLoginUsescase>(
      () => AuthLoginUsescase(authenticationRepo: getIt()),
    );
    getIt.registerLazySingleton<AuthVerifyCodeUsescase>(
      () => AuthVerifyCodeUsescase(authenticationRepo: getIt()),
    );
    getIt.registerLazySingleton<AuthPharmainfoUsescase>(
      () => AuthPharmainfoUsescase(authenticationRepo: getIt()),
    );
    getIt.registerLazySingleton<AuthSendCodeUsescase>(
      () => AuthSendCodeUsescase(authenticationRepo: getIt()),
    );
    getIt.registerLazySingleton<AuthResetPasswordUsescase>(
      () => AuthResetPasswordUsescase(authenticationRepo: getIt()),
    );

    //   Auth
    getIt.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImp(),
    );
    getIt.registerLazySingleton<AuthRemouteDataSource>(
      () => AuthRemouteDataSourceImp(networkInfoService: getIt()),
    );
    getIt.registerLazySingleton<AuthenticationRepo>(
      () => AuthenticationRepoIm(
          authLocalDataSource: getIt(), authRemouteDataSource: getIt()),
    );

    //   Auth  Cubit
    getIt.registerFactory<ResetCubit>(() => ResetCubit(getIt()));
    
    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(getIt()),
    );

    getIt.registerFactory<RegisterrCubit>(
      () => RegisterrCubit(getIt(), getIt()),
    );

    getIt.registerFactory<VerifyCubit>(
      () => VerifyCubit(getIt(),getIt()),
    );
  }

  static Future<void> initMainDependencies() async {
    // DataSources
    GetIt.instance.registerLazySingleton<MainRemoteDataSource>(
      () => MainRemoteDataSourceImpl(
        apiService: getIt(),
      ),
    );
    // GetIt.instance.registerLazySingleton<MainLocalDataSource>(
    //   () => MainLocalDataSourceImpl(
    //     cacheService: getIt(),
    //   ),
    // );

    /// Repositories
    GetIt.instance.registerLazySingleton<MainRepo>(
      () => MainRepoImpl(
        mainRemoteDataSource: getIt(),
        // mainLocalDataSource: getIt(),
      ),
    );

    /// UseCases
    GetIt.instance.registerLazySingleton(
      () => GetHomeDataUseCase(mainRepo: getIt()),
    );

    /// Cubits and Blocs
    GetIt.instance.registerFactory(() => MainCubit());
  }
}
