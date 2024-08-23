import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/helpers/regex_validator.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/screen/login/cubit/login_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_top_widget.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_login_bloc_listener.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double begainScreen = height * 0.42;
    return  Scaffold(
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              AuthHeadScreenWidget(
                dataAuthHeadScreen: listdataAuthHeadScreen["login"],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: begainScreen,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SingleChildScrollView(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Form(
                        key: context.read<LoginCubit>().formState,
                        child: Column(
                          children: [
                            PrimaryTextField(
                              labelText: " email",
                              hintText: "Enter your email",
                              controller: context.read<LoginCubit>().email,
                              // validator: (value) =>
                              //     RegexValidator.validateEmail(value),
                              suffixIcon: const Icon(
                                Icons.email,
                                color: AppColors.primaryButton,
                              ),
                            ),
                            verticalSpace(15),
                            PrimaryTextField(
                              labelText: "password ",
                              hintText: "Enter your password",
                              controller: context.read<LoginCubit>().password,
                              validator: (value) =>
                                  RegexValidator.validatePassword(value),
                              suffixIcon: IconButton(
                                  onPressed: () => setState(() {
                                        isObscureText = !isObscureText;
                                      }),
                                  icon: Icon(
                                    isObscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: AppColors.primaryButton,
                                  )),
                              isObscureText: isObscureText,
                            ),
                          ],
                        )),
                    verticalSpace(25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => GoRouter.of(context)
                              .pushReplacement(AppRoutes.forgetPasswordScreen),
                          child: Text(
                            "forget password",
                            style: TextStyle(
                                color: AppColors.primaryButton,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(120.h),
                    PrimaryButton(
                        text: 'Verify',
                        onPressed: () {
                          context.read<LoginCubit>().login(
                              context.read<LoginCubit>().email.text,
                              context.read<LoginCubit>().password.text);

                          //
                        }),
                    const LoginBlocListener()
                  ])),
                ),
              ),
            ],
          ),
        );
  }
}
