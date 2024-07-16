import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle workSans(int fontSize,FontWeight fontWeight,{Color color=AppColors.black} ){
    return GoogleFonts.workSans(
      textStyle: TextStyle(fontSize: fontSize.sp, fontWeight: fontWeight,color: color));
  }
  
}
