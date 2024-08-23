

import 'package:dartz/dartz.dart';
import 'package:pharma_app/core/helpers/failures.dart';

abstract class AuthenticationRepo{

 Future<Either<Failure,Unit>> register(String firstname,String lastname,String email,String password);

 Future<Either<Failure,Unit>> verifyCode(String email,String otp);

 Future<Either<Failure,Unit>> sendCode(String email);

 Future<Either<Failure,Unit>> pharmaInfo(String name,String phone,String location,String polceies);

 Future<Either<Failure,Unit>> login(String email,String password);


 Future<Either<Failure,Unit>> resetPassword(String newPassword);


}