import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/data/data_auth.dart';
import 'package:pharma_app/core/helpers/clipper.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_text_tile.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_indecator.dart';

class AuthHeadScreenWidget extends StatelessWidget {
  final DataAuthHeadScreen dataAuthHeadScreen;

  const   AuthHeadScreenWidget({
    super.key,
    required this.dataAuthHeadScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ClipPath(
            clipper: ClipperAuth(),
            child: Container(
              color: AppColors.materialPrimary,
            ),
          ),
        ),
        Positioned(
            top: 35.h,
            left: 70.w,
            child: SvgPicture.asset(
              dataAuthHeadScreen.image,
              height: 150.h,
            )),
       Positioned(
            left: 70.w,
            top: 182.h,
            child: HeadScreenTextAuth(
                title: dataAuthHeadScreen.title,
                body: dataAuthHeadScreen.body,
                buttonname: dataAuthHeadScreen.buttonname,
                onPresed:(){dataAuthHeadScreen.function!(context);} )),
        Positioned(
            right: 25.w,
            top: 60.h,
            child: AuthIndecator(lenght: 3, counter: dataAuthHeadScreen.counter)),
      ],
    );
  }
}
