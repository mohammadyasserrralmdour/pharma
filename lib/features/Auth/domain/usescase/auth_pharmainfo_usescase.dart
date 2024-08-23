import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/repo/auth_repo.dart';

import '../../../../injection_container.dart';

class AuthPharmainfoUsescase {
  final AuthenticationRepo authenticationRepo;

  AuthPharmainfoUsescase({required this.authenticationRepo});

  Future<Either<Failure, Unit>> call(
      String name, String phone, String location, String polceies) async {
    InjectionContainer.getIt<Logger>().i("Call AuthPharmainfoUsescase ");
    return await authenticationRepo.pharmaInfo(name, phone, location, polceies);
  }
}
