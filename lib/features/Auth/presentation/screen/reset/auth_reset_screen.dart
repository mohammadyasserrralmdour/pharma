import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/screen/reset/cubit/reset_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_reset_bloc_listener.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_top_widget.dart';

import '../../../../../core/helpers/regex_validator.dart';

class AuthResetScreen extends StatelessWidget {
  const AuthResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double begainScreen = h * 0.42;
    return BlocListener<ResetCubit, ResetState>(
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
      child: Scaffold(
        body: Stack(
          children: [
            AuthHeadScreenWidget(
              dataAuthHeadScreen: listdataAuthHeadScreen["reset"],
            ),
            Positioned(
                top: begainScreen,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Form(
                        key: context.read<ResetCubit>().formState,
                        child: Column(children: [
                          PrimaryTextField(
                              controller: context.read<ResetCubit>().password,
                              labelText: " password",
                              hintText: "Enter your password"),
                          verticalSpace(15),
                          PrimaryTextField(
                            controller:
                                context.read<ResetCubit>().confirmPassword,
                            labelText: " confirm password",
                            hintText: "Enter your confirm password",
                            validator: (value) =>
                                RegexValidator.validateConfirmPassword(
                                    context.read<ResetCubit>().password.text,
                                    context
                                        .read<ResetCubit>()
                                        .confirmPassword
                                        .text),
                          ),
                          verticalSpace(190.h),
                        ]),
                      ),
                      // const ResetBlocListener(),
                      PrimaryButton(
                          text: 'Reset',
                          onPressed: () {
                            context.read<ResetCubit>().reset(
                                  context.read<ResetCubit>().password.text,
                                );

                            // GoRouter.of(context)
                            //     .pushReplacement(AppRoutes.authVerifyScreen);
                          }),
                    ],
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
