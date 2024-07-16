import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplainingAboutAccount extends StatelessWidget {
  final String text;
  const ExplainingAboutAccount({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
         CircleAvatar(
          radius: 5.r,
          backgroundColor: AppColors.primaryButton,
        ),horizantalSpace(6),
        Text(
          text,
          style: GoogleFonts.workSans(
              textStyle:
                  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
}
