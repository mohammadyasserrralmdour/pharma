import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_otp_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';

class AuthVerifyScreen extends StatelessWidget {
  const AuthVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Stack(
      children: [
       AuthHeadScreenWidget(dataAuthHeadScreen: listdataAuthHeadScreen["verify"],),
      
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(80),
              Text(
                  "Verify Code",
                  style:
                      TextStyle(color: AppColors.primaryButton, fontSize: 23.sp),
                ),
              verticalSpace(20),
              const PrimaryOTPTextField(),
            ],
          ),
        ),Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: PrimaryButton(text: 'Verify Code',onPressed: (){
                                             
                          GoRouter.of(context).push(AppRoutes.authInfoScreen);
                         }),
            ),
          ),
     
      ],
    ),
    );
  }
}


