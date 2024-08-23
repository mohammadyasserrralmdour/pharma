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
import 'package:pharma_app/features/Auth/presentation/screen/register/cubit/registerr_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_register_bloc_listener.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_top_widget.dart';

class AuthRegeisterScreen extends StatefulWidget {
  const AuthRegeisterScreen({super.key});

  @override
  State<AuthRegeisterScreen> createState() => _AuthRegeisterScreenState();
}

class _AuthRegeisterScreenState extends State<AuthRegeisterScreen> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  validation() {
    formState.currentState?.validate();
  }

  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double begainScreen = h * 0.4;
    return Scaffold(body: BlocBuilder<RegisterrCubit, RegisterrState>(
      builder: (context, state) {
        return Stack(children: [
          AuthHeadScreenWidget(
            dataAuthHeadScreen: listdataAuthHeadScreen["register"],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            margin: EdgeInsets.only(top: begainScreen),
            child: SizedBox(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Form(
                        key: context.read<RegisterrCubit>().formState,
                        child: Column(
                          children: [
                            PrimaryTextField(
                              controller:
                                  context.read<RegisterrCubit>().firstname,
                              labelText: " first name",
                              hintText: "Enter your first name",
                              validator: (value) =>
                                  RegexValidator.validateFirstName(value),
                              suffixIcon: const Icon(
                                Icons.person,
                                color: AppColors.primaryButton,
                              ),
                            ),
                            verticalSpace(15),
                            PrimaryTextField(
                              controller:
                                  context.read<RegisterrCubit>().lastnaem,
                              labelText: " last name",
                              hintText: "Enter your last name",
                              validator: (value) =>
                                  RegexValidator.validateSecondName(value),
                              suffixIcon: const Icon(
                                Icons.person,
                                color: AppColors.primaryButton,
                              ),
                            ),
                            verticalSpace(15),
                            PrimaryTextField(
                              controller: context.read<RegisterrCubit>().email,
                              labelText: " email",
                              hintText: "Enter your email",
                              // validator: (value) =>
                              //     RegexValidator.validateEmail(value),
                              suffixIcon: const Icon(
                                Icons.email,
                                color: AppColors.primaryButton,
                              ),
                            ),
                            verticalSpace(15),
                            PrimaryTextField(
                              controller:
                                  context.read<RegisterrCubit>().password,
                              labelText: " password",
                              hintText: "Enter your password",
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

                    verticalSpace(15),
                    PrimaryButton(
                        text: 'Register',
                        onPressed: () async {

                       await   context.read<RegisterrCubit>().register(
                                context.read<RegisterrCubit>().firstname.text,
                                context.read<RegisterrCubit>().lastnaem.text,
                                context.read<RegisterrCubit>().email.text,
                                context.read<RegisterrCubit>().password.text,
                              );

                          GoRouter.of(context).push(
                            AppRoutes.authVerifyScreen,
                            extra: context.read<RegisterrCubit>().email.text,
                          );
                        }), //
                    const RegisterBlocListener()
                  ],
                ),
              ),
            ),
          )
        ]);
      },
    ));
  }
}
