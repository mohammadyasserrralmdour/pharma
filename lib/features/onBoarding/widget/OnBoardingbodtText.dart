import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
    
class OnBoardingbodtText extends StatelessWidget {
  final String body;
  const OnBoardingbodtText({super.key, required this.body }) ;
  
  @override
  Widget build(BuildContext context) {
    return Text(
                body,
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26.sp,
                  ),
                ),
                textAlign: TextAlign.center,
              );
  }
}