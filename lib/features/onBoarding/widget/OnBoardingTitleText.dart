import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
    
class OnBoardingTitleText extends StatelessWidget {
  final String title;
  const OnBoardingTitleText({ super.key, required this.title });
  
  @override
  Widget build(BuildContext context) {
    return Text(
                title,
                style:TextStyle(fontFamily:"WorkSans" ,
                        fontWeight: FontWeight.w400, fontSize: 35.sp,)
              );
  }
}

