import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/main/domain/entities/home_data_entity.dart';
import 'package:pharma_app/features/main/domain/repository/main_repo.dart';
import 'package:dartz/dartz.dart';


class GetHomeDataUseCase {
  final MainRepo mainRepo;

  GetHomeDataUseCase({required this.mainRepo});

  Future<Either<Failure, HomeData>> call() async {
    return await mainRepo.getHome();
  }
}
