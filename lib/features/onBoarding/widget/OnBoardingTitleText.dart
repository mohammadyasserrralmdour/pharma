import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
    
class OnBoardingTitleText extends StatelessWidget {
  final String title;
  const OnBoardingTitleText({ super.key, required this.title });
  
  @override
  Widget build(BuildContext context) {
    return Text(
                title,
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 35.sp)),
              );
  }
}