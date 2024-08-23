import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/core/helpers/get_failure_from_exception.dart';
import 'package:pharma_app/features/Auth/data/datasoursce/auth_local_data_source.dart';
import 'package:pharma_app/features/Auth/data/datasoursce/auth_remoute_data_source.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';
import 'package:pharma_app/injection_container.dart';

class AuthenticationRepoIm implements AuthenticationRepo {
  final AuthRemouteDataSource authRemouteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthenticationRepoIm(
      {required this.authRemouteDataSource, required this.authLocalDataSource});

  
 

  @override
  Future<Either<Failure, Unit>> login(String email, String password) async {
   try {
      InjectionContainer.getIt<Logger>()
          .i("Star login in AuthenticationRepoIm");
     await authRemouteDataSource.login(email, password);
      InjectionContainer.getIt<Logger>().i("End login in AuthenticationRepoIm");

      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End login in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
   }

  @override
  Future<Either<Failure, Unit>> pharmaInfo(
      String name, String phone, String location, String polceies) async {
    try {
      InjectionContainer.getIt<Logger>()
          .i("Start pharmaInfo in AuthenticationRepoIm");
      authRemouteDataSource.pharmaInfo(name, phone, location, polceies);
      InjectionContainer.getIt<Logger>()
          .i("End pharmaInfo in AuthenticationRepoIm");

      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End pharmaInfo in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> register(String firstname,String lastname,String email,String password) async {
    try {
      InjectionContainer.getIt<Logger>()
          .i("Start register in AuthenticationRepoIm");
    await  authRemouteDataSource.register(firstname,lastname,email,password);
      InjectionContainer.getIt<Logger>()
          .i("End register in AuthenticationRepoIm");

      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End register in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetPassword(String newPassword) async {
    try {
      InjectionContainer.getIt<Logger>()
          .i("Start resetPassword in AuthenticationRepoIm");
    await  authRemouteDataSource.resetPassword(newPassword);
      InjectionContainer.getIt<Logger>()
          .i("End resetPassword in AuthenticationRepoIm");

      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End resetPassword in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendCode(email) async {
    try {
      InjectionContainer.getIt<Logger>()
          .i("Start sendCode in AuthenticationRepoIm");
   await   authRemouteDataSource.sendCode(email);
      InjectionContainer.getIt<Logger>()
          .i("End sendCode in AuthenticationRepoIm");

      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End sendCode in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyCode(String email, String code) async {
    try {
      InjectionContainer.getIt<Logger>()
          .i("Start verifyCode in AuthenticationRepoIm");
     await authRemouteDataSource.verifyCode(email,code);
      InjectionContainer.getIt<Logger>()
          .i("End verifyCode in AuthenticationRepoIm");
    
      return right(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .i("End verifyCode in AuthenticationRepoIm with Exception is $e");

      return left(getFailureFromException(e));
    }
  }
}
