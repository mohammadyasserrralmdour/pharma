import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final void Function()? onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.primaryButton,
        disabledColor: AppColors.primaryButton,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r), side: BorderSide.none),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Text(
            text,
            style:  TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }
}
