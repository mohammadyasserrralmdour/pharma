import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';

import '../../../../injection_container.dart';

class AuthSendCodeUsescase {
  final AuthenticationRepo authenticationRepo;

  AuthSendCodeUsescase({required this.authenticationRepo});

  Future<Either<Failure, Unit>> call(String email) async {
    InjectionContainer.getIt<Logger>().i("Call AuthSendCodeUsescase ");
    return await authenticationRepo.sendCode(email);
  }
}
