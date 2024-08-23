import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle workSans(int fontSize,FontWeight fontWeight,{Color color=AppColors.black} ){
    return TextStyle(
    fontFamily:"WorkSans" 
      ,fontSize: fontSize.sp, fontWeight: fontWeight,color: color);
  }
  
}
