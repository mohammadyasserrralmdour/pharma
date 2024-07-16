import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';

class AuthRegeisterScreen extends StatelessWidget {
  const AuthRegeisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double begainScreen = h * 0.4;
    return Scaffold(
        body: Stack(children: [
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
                const PrimaryTextField(
                    labelText: " name", hintText: "Enter your name"),
                verticalSpace(15),
                const PrimaryTextField(
                  labelText: " email",
                  hintText: "Enter your email",
                ),
                verticalSpace(15),
                const PrimaryTextField(
                    labelText: " password", hintText: "Enter your password"),
                verticalSpace(15),
                const PrimaryTextField(
                    labelText: " confirm password",
                    hintText: "Enter your confirm password"),
                verticalSpace(15),
                PrimaryButton(
                    text: 'Register',
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.authVerifyScreen);
                    }),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
