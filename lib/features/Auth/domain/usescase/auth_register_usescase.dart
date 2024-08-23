import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';
import 'package:pharma_app/injection_container.dart';

class AuthRegisterUsescase {
  final AuthenticationRepo authenticationRepo;

  AuthRegisterUsescase({required this.authenticationRepo});

  Future<Either<Failure, Unit>> call(
      String firstname, String lastname, String email, String password) async {
    InjectionContainer.getIt<Logger>().i("Call AuthRegisterUsescase ");
    return await authenticationRepo.register(
        firstname, lastname, email, password);
  }
}
