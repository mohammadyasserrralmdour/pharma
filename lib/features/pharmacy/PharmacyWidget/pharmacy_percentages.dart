

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pie_chart/pie_chart.dart';

class PharmacyPercentages extends StatelessWidget {
  const PharmacyPercentages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          width: double.infinity,
          height: 150.h,
          decoration: ContainerBoxDecoration.pharmacyBox,
          child: Row(
            children: [
              PieChart(
                colorList: const [
                  AppColors.primaryButton,
                  AppColors.success,
                  AppColors.white,
                  AppColors.black,
                 //  AppColors.amber
                ],
                dataMap: {
                  'Perishable': 40.0.sp,
                  'Recent': 10.0.sp,
                  'Litle': 15.0.sp,
                  'Aplenty': 35.0.sp,
                  //'Expired': 15.0.sp,
                },
                chartType: ChartType.ring,
                chartRadius: 100.0.r,
                chartLegendSpacing: 32.0.w,
              ),
            ],
          ),
        );
  }
}