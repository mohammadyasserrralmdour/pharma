import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_reset_password_usescase.dart';
import 'package:pharma_app/injection_container.dart';

part 'reset_cubit.freezed.dart';
part 'reset_state.dart';

class ResetCubit extends Cubit<ResetState> {
  final AuthResetPasswordUsescase authResetPasswordUsescased;
  ResetCubit(this.authResetPasswordUsescased)
      : super(const ResetState.initial());

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  reset(String newPassword) async {
    bool x = formState.currentState!.validate();
    if (x) {
      InjectionContainer.getIt<Logger>().i("Start Reset in Cubit");
      emit(const ResetState.loading());
      
      await Future.delayed(const Duration(seconds: 3));
      var data = await authResetPasswordUsescased(newPassword);
      data.fold(
        (fialure) {
          emit(ResetState.erorr(fialure.message));
        },
        (unit) {
          emit(const ResetState.loaded());
        },
      );
    }
  }
}
