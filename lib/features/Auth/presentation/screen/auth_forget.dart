import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';

class AuthForgetScreen extends StatefulWidget {
  const AuthForgetScreen({super.key});

  @override
  State<AuthForgetScreen> createState() => _AuthForgetScreenState();
}

class _AuthForgetScreenState extends State<AuthForgetScreen> {
  @override
 Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double begainScreen=h*0.42;
    return Scaffold(body: Stack(
      children: [
       AuthHeadScreenWidget(dataAuthHeadScreen: listdataAuthHeadScreen["forget"],),
        Positioned(
            top: begainScreen,
            left: 0,
            right: 0,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                  child: Column(children: [
                
                const PrimaryTextField(
                  labelText: " email",
                  hintText: "Enter your email",
                ),
                verticalSpace(25),
               SizedBox(height: 30,child: AuthTimer()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextButton(onPressed: () => 
                  GoRouter.of(context).go(AppRoutes.forgetPasswordScreen)
                  , child: Text(
                      "resend code",
                      style: TextStyle(
                          color: AppColors.primaryButton,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),),
               
                    
                  ],
                ),    verticalSpace(210.h), 
                    PrimaryButton(
                text: 'Verify',
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRoutes.authResetScreen);
                }),
              ])),
            )),
      
      ],
    ),);
  }
}

/*

*/


class AuthTimer extends StatefulWidget {
  const AuthTimer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthTimerState createState() => _AuthTimerState();
}

class _AuthTimerState extends State<AuthTimer> {
  int seconds = 0;
  int minutes = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        if (seconds == 60) {
          seconds = 0;
          minutes++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
                ' $minutes:$seconds sec',
                style: AppTextStyles.workSans(12, FontWeight.w500,color: AppColors.gray),
              );
  }
}