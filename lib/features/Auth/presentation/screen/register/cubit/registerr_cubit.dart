import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_register_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_send_code_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_verify_code_usescase.dart';
import 'package:pharma_app/injection_container.dart';

part 'registerr_cubit.freezed.dart';
part 'registerr_state.dart';

class RegisterrCubit extends Cubit<RegisterrState> {
 final AuthRegisterUsescase authRegisterUsescase;
  final AuthSendCodeUsescase authSendCodeUsescase;


  RegisterrCubit(this.authRegisterUsescase, this.authSendCodeUsescase)
      : super(const RegisterrState.initial());

  TextEditingController firstname = TextEditingController();
  TextEditingController lastnaem = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
   GlobalKey<FormState> formState = GlobalKey<FormState>();
 
  Future register(
    String firstname,
    String lastnaem,
    String email,
    String password,
  ) async {
        InjectionContainer.getIt<Logger>().i("Start Register in Cubit");

    emit(const RegisterrState.loadin());
  await Future.delayed(const Duration(seconds: 3));
   bool?x =    formState.currentState?.validate();
   if(x!){
     Either<Failure, Unit> data =
        await authRegisterUsescase(firstname, lastnaem, email, password);
    data.fold(
      (failure) {

        emit(RegisterrState.erorr(failure.message));
            InjectionContainer.getIt<Logger>().i("End Register in Cubit with Failure $failure");

      } ,
      (loaded) { emit(const RegisterrState.loaded());
          InjectionContainer.getIt<Logger>().i("End Register in Cubit");

      }
    );
   }
   
  }

  sendCode(String email)async{
    await authSendCodeUsescase.call(email);
  }

}
