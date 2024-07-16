import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final void Function()? onPressed;

  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width = double.infinity,
    this.color = AppColors.primary10,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: color,
        disabledColor: AppColors.primary10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r), side: BorderSide.none),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 3.h),
          child: TextFont12Wight700(text: text)
        ),
      );
  }
}
