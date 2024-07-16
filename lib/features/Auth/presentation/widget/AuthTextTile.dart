import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharma_app/core/constants/app_colors.dart';

class HeadScreenTextAuth extends StatelessWidget {
  final String title;
  final String body;

  final String? buttonname;
  final Function()? onPresed;

  const HeadScreenTextAuth(
      {super.key,
      required this.title,
      required this.body,
      required this.buttonname,
      required this.onPresed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400)),
                children: [
              TextSpan(text: title, style: TextStyle(fontSize: 30.sp)),
              TextSpan(text: body),
              TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onPresed,
                  text: buttonname ?? "",
                  style: const TextStyle(color: AppColors.primaryButton))
            ])),
      ],
    );
  }
}
