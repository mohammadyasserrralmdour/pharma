import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';


class AuthResetScreen extends StatelessWidget {
  const AuthResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double h=MediaQuery.of(context).size.height;
    double begainScreen=h*0.42;
    return Scaffold(
      body: Stack(
      children: [
        AuthHeadScreenWidget(dataAuthHeadScreen: listdataAuthHeadScreen["reset"], ),
        Positioned(
            top: begainScreen,
            left: 0,
            right: 0,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                  child: Column(children: [
                const PrimaryTextField(
                    labelText: " password", hintText: "Enter your password"),
                verticalSpace(15),
                const PrimaryTextField(
                  labelText: " confirm password",
                  hintText: "Enter your confirm password",
                ),
                verticalSpace(190.h),
                PrimaryButton(
              text: 'Reset',
              onPressed: () {
               
                GoRouter.of(context).pushReplacement(AppRoutes.authVerifyScreen);
              }),
              ])),
            )),
       
      ],
    ),
    )
    ;
  }
}
