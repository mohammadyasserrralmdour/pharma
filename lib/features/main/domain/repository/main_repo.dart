import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/main/domain/entities/home_data_entity.dart';
import 'package:dartz/dartz.dart';


abstract class MainRepo {
  Future<Either<Failure, HomeData>> getHome();
}
