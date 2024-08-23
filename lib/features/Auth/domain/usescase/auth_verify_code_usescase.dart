import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/injection_container.dart';

import '../repo/auth_repo.dart';

class AuthVerifyCodeUsescase {
  final AuthenticationRepo authenticationRepo;

  AuthVerifyCodeUsescase({required this.authenticationRepo});

  Future<Either<Failure, Unit>> call(String email,String otp) async {
    InjectionContainer.getIt<Logger>().i("Call AuthVerifyCodeUsescase ");
    return await authenticationRepo.verifyCode(email,otp);
  }
}
