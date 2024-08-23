import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/helpers/clipper.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_indecator.dart';
import 'package:pharma_app/features/onBoarding/widget/OnBoardingTitleText.dart';
import 'package:pharma_app/features/onBoarding/widget/OnBoardingbodtText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double h=MediaQuery.of(context).size.height;
    double begainScreen=h*0.34;
    return Scaffold(
      
      body: Stack(
      children: [
        SizedBox.expand(
      
          child: ClipPath(
            clipper: ClipperOnboarding(),
            child: Container(color: AppColors.materialPrimary),
          ),
        ),
         Positioned(
            right: 25.w, top: 60.h, child: AuthIndecator(lenght: 4, counter: 0)),
        Positioned(
            top: 40.h,
            left: 20.w,
            child: MaterialButton(
              shape: const StadiumBorder(),
              onPressed: () => null,
              color: AppColors.primaryButton,
              textColor: AppColors.white,
              child:  Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
                child: Text("skip",style: AppTextStyles.workSans(12, FontWeight.w500,color: AppColors.white,),),
              ),
            )),
        Positioned(
          left: 0,
          right: 0,
          top: begainScreen,
          child: Column(
            children: [
              verticalSpace(5),
              SvgPicture.asset(
                "${AppAssets.rootSVGImages}/onBoarding.svg",
                height: 180.h,
              ),
              verticalSpace(25),
              const OnBoardingTitleText(title: "Manage Drugs"),
              verticalSpace(25),
              const OnBoardingbodtText(
                  body: "you can monitor all\n drug  and  it  quantities"),
             
              
            ],
          ),
        ),Positioned(bottom: 15,
              left: 0,right: 0,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: PrimaryButton(
                      text: "next",
                      onPressed: () {
                        GoRouter.of(context).pushReplacement(AppRoutes.authRegeisterScreen);
                      },
                    ),
                ),
              )
      ],
    )
    );
  }
}
