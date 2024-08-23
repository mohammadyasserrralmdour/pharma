import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

class MonitoringStockType extends StatelessWidget {
  final String stock;
  const MonitoringStockType({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10.r))
      ,onTap: ()=>GoRouter.of(context)
                .push(AppRoutes.MonitoringSubactionScreen),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
        decoration: ContainerBoxDecoration.pharmacyBox,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFont16Wight500(text: stock),
            Container(
                  alignment: Alignment.center,
                  decoration:const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.white),
                  child: Icon(
                    size: 23.dm,
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.black,
                  )),
            
          ],
        ),
      ),
    );
  }
}
