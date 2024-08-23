import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pharma_app/core/helpers/failures.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_send_code_usescase.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_verify_code_usescase.dart';
import 'package:pharma_app/injection_container.dart';

part 'verify_cubit.freezed.dart';
part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  final AuthVerifyCodeUsescase authVerifyCodeUsescase;
  final AuthSendCodeUsescase authSendCodeUsescase;
  VerifyCubit(this.authVerifyCodeUsescase, this.authSendCodeUsescase, )

      : super(const VerifyState.initial());

  verifyCode(String email, String otp) async {
    InjectionContainer.getIt<Logger>().i("Start Verify in Cubit");

    emit(const VerifyState.loading());

    await Future.delayed(const Duration(seconds: 3));

    Either<Failure, Unit> data = await authVerifyCodeUsescase(email, otp);

    data.fold((failure) {
      emit(VerifyState.erorr(failure.message));
      InjectionContainer.getIt<Logger>()
          .i("End Register in Cubit with Failure is $failure");
    }, (loaded) {
      emit(const VerifyState.loaded());
      InjectionContainer.getIt<Logger>().i("End Register in Cubit ");
    });
  }

  sendCodeCubit(String email) async {
    InjectionContainer.getIt<Logger>().i("Start SendCode to  in VerifyCubit");
    await authSendCodeUsescase(email);
  }
}
