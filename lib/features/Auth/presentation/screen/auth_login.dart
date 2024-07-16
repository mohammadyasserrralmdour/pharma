import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    double begainScreen = height * 0.42;
    return Scaffold(
      body: Stack(clipBehavior: Clip.none,
        children: [
          AuthHeadScreenWidget(
            dataAuthHeadScreen: listdataAuthHeadScreen["login"],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: begainScreen,
            child:  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min
                        ,children: [
                    const PrimaryTextField(
                        labelText: " name", hintText: "Enter your name"),
                    verticalSpace(15),
                    const PrimaryTextField(
                      labelText: " email",
                      hintText: "Enter your email",
                    ),
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
                    ),verticalSpace(120.h),
                    PrimaryButton(
                        text: 'Verify',
                        onPressed: () {
                          GoRouter.of(context).push(AppRoutes.pharmacyScreen);
                        }),
                  ])),
            ),
          ),
        ],
      ),
    );
  }
}
