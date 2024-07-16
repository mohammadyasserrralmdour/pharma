

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pie_chart/pie_chart.dart';

class DrugsReportBox extends StatelessWidget {
  const DrugsReportBox({super.key});

  @override
  Widget build(BuildContext context) {
    List dataDrugRanking=["All","Recent","Litle","Aplenty","Expired","Requests"];
    return  Container(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          height: 130.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.primary30,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow:  [
                BoxShadow(
                    color: AppColors.grayAccent,
                    blurRadius: 4,
                    spreadRadius: 0.5,
                    offset: Offset(0, 1.9.w))
              ]),
          child:
          PieChart(
              ringStrokeWidth: 15.w,
              colorList:const [
              AppColors.primaryButton,
              AppColors.black,
              AppColors.success,
              AppColors.materialPrimary,
              AppColors.primary10,
            ],
              dataMap: {
                'Perishable': 40.0.sp,
                'Recent': 10.0.sp,
                'Litle': 15.0.sp,
                'Aplenty': 35.0.sp,
                'Expired': 15.0.sp,
                
              },
                
              chartType: ChartType.ring,
              chartRadius: 120.0.r,
               
              chartLegendSpacing: 40.0.w,
            
            ),
          //  Row(
          //   children: [
              
          //     horizantalSpace(30),
          //     Expanded(
          //       child: Column(
          //         //mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
                   
                   
          //           Row(children: [
          //             const CircleAvatar(
          //               radius: 3,
          //               backgroundColor: AppColors.primaryButton,
          //             ),
          //             horizantalSpace(5),
          //             const Text("Recent")
          //           ]),
          //            verticalSpace(5),
          //          Row(children: [
          //             const CircleAvatar(
          //               radius: 3,
          //               backgroundColor: AppColors.primaryButton,
          //             ),horizantalSpace(5),
                      
          //             const Text("Litle")
          //           ]),
          //           verticalSpace(5),
          //            Row(children: [
          //             const CircleAvatar(
          //               radius: 3,
          //               backgroundColor: AppColors.primaryButton,
          //             ),horizantalSpace(5),
                      
          //             const Text("Aplenty")
          //           ]),
          //         ],
          //       ),
          //     ),
             
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Row(children: [
          //             const CircleAvatar(
          //               radius: 3,
          //               backgroundColor: AppColors.primaryButton,
          //             ),
          //             horizantalSpace(5),
          //             const Text("Expired")
          //           ]),
          //           verticalSpace(20),
          //           Row(children: [
          //             const CircleAvatar(
          //               radius: 3,
          //               backgroundColor: AppColors.primaryButton,
          //             ),
          //             horizantalSpace(5),
          //             const Text("Perishable")
          //           ]),
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        );
  }
}