import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryAppbar extends StatelessWidget {
  final Widget? leading;
  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final void Function()? firstfunction;
  final void Function()? secondfunction;

  const PrimaryAppbar(
      {super.key,
      this.leading,
      required this.title,
      this.firstIcon,
      this.secondIcon,
      this.firstfunction,
      this.secondfunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            leading ?? Container(),
            horizantalSpace(5.w),
            Text(
              title,
              style: GoogleFonts.workSans(
                  textStyle:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700)),
            ),
          ],
        ),
        Row(
          children: [
            firstIcon == null
                ? Container()
                : InkWell(
                    onTap: firstfunction,
                    child: Icon(
                      firstIcon,
                      color: AppColors.black,
                      size: 30.dm,
                    )),
            horizantalSpace(7.w),
            secondIcon == null
                ? Container()
                : InkWell(
                    onTap: secondfunction,
                    child: Icon(
                      secondIcon,
                      color: AppColors.black,
                      size: 30.dm,
                    )),
          ],
        )
      ],
    );
  }
}


/*
 

*/