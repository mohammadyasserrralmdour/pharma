import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_login_usescase.dart';
import 'package:pharma_app/injection_container.dart';

import '../../../../../../core/helpers/failures.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthLoginUsescase authLoginUsescase;
  LoginCubit(this.authLoginUsescase) : super(const LoginState.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  login(String email, String password) async {
    bool? valid = formState.currentState?.validate();

    if (valid!) {

      emit(const LoginState.loadin());
          InjectionContainer.getIt<Logger>().i("Start Login in Cubit");

      await Future.delayed(const Duration(seconds: 3));
      
      Either<Failure, Unit> data =
          
          await authLoginUsescase.call(email, password);

      data.fold(
        (failure) {emit(LoginState.erorr(failure.message));
        InjectionContainer.getIt<Logger>().i("End Login in Cubit with Failure is $failure");
        },
        (r) { emit(const LoginState.loaded());
                InjectionContainer.getIt<Logger>().i("End Login in Cubit ");

        }
      );
    }
  }
}
