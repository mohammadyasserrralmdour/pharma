import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MonitoringTextFormFiled extends StatelessWidget {
  const MonitoringTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Drug :",
            style: AppTextStyles.workSans(14, FontWeight.w500,
                color: AppColors.gray),
          ),
        ),
        verticalSpace(10.h),
        TextFormField(
          maxLines: 1,
          decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary20, width: 3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary20, width: 3)),
              fillColor: AppColors.primary20,
              filled: true),
        ),
      ],
    );
  }
}
