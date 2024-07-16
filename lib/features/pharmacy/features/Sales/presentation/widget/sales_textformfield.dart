import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextformfieldSearch extends StatelessWidget {
  const TextformfieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Find Customers",
        hintStyle: AppTextStyles.workSans(14, FontWeight.w500,color:AppColors.grayAccent ),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.grayAccent,
        ),
        suffixIcon: const Icon(Icons.keyboard_arrow_down),
        suffixIconColor: AppColors.grayAccent,
        fillColor: AppColors.primary20,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 0.6,
            color: AppColors.primary20,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.danger,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.danger,
          ),
        ),
      ),
    );
  }
}
