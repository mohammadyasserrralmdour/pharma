import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PharmacyTextTitleBlue extends StatelessWidget {
  final String text;

  const PharmacyTextTitleBlue({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: AppTextStyles.workSans(24, FontWeight.w700,
                color: AppColors.primaryButton)));
  }
}
