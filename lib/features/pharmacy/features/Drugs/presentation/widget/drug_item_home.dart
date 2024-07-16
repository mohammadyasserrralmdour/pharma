import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DrugRankingItem extends StatelessWidget {
  final String ranking;
  const DrugRankingItem({super.key, required this.ranking});

  @override
  Widget build(BuildContext context) {
    return Container(height: 70,
      decoration: BoxDecoration(
          color: AppColors.primary30,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: AppColors.grayAccent,
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: Offset(0, 1.9))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ranking,
            style: GoogleFonts.workSans(
                textStyle:  TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp)),
          ),
          verticalSpace(4),
       const   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [TextFont16Wight700(text: "amount"),TextFont16Wight300(text: "234"),],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [ TextFont16Wight700(text: "total"),TextFont16Wight300(text: "data \$")],
              )
            ],
          ),
          
        ],
      ),
    );
  }
}
