import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/features/Auth/domain/usescase/auth_reset_password_usescase.dart';
import 'package:pharma_app/features/Auth/presentation/screen/Reset/cubit/reset_cubit.dart';
import 'package:pharma_app/injection_container.dart';

class ResetBlocListener extends StatelessWidget {
  const ResetBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ResetCubit(InjectionContainer.getIt<AuthResetPasswordUsescase>()),
      child: BlocListener<ResetCubit, ResetState>(
        listenWhen: (previous, current) =>
            current is ResetErorr ||
            current is ResetLoaded ||
            current is ResetLoading,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => Container(),
            loading: () => showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            loaded: () {
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                        title: Text("Success"),
                      ));
            },
            erorr: (erorr) {
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        erorr,
                        style: AppTextStyles.workSans(15, FontWeight.w600,
                            color: AppColors.black),
                      ),
                    );
                  });
            },
            initial: () => Container(),
          );
        },
        child: const SizedBox.shrink(),
      ),
    );
  }
}







/*
 

*/