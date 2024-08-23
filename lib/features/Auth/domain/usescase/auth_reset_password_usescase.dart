import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';

import '../../../../injection_container.dart';

class AuthResetPasswordUsescase {
  final AuthenticationRepo authenticationRepo;

  AuthResetPasswordUsescase({required this.authenticationRepo});

  Future<Either<Failure, Unit>> call(String newPassword) async {
    InjectionContainer.getIt<Logger>().i("Call AuthResetPasswordUsescase ");
    return await authenticationRepo.resetPassword(newPassword);
  }
}
