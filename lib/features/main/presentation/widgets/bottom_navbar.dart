import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_strings.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';

class BottomNavbar extends StatelessWidget {
  final int currentTab;
  final void Function(int) changeCurrentTab;

  const BottomNavbar({
    super.key,
    required this.currentTab,
    required this.changeCurrentTab,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      iconSize: 40,
      itemCornerRadius: 15.r,
      containerHeight: 65.h,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      items: [
        BottomNavyBarItem(
            // ignore: deprecated_member_use
            icon: SvgPicture.asset("${AppAssets.rootSVGIcons}/drugs.svg",fit: BoxFit.fill,height:25.h.h,width:25.h,
                // ignore: deprecated_member_use
                color: AppColors.primary),
            title: Text(
              AppStrings.drug,
              style: AppTextStyles.workSans(13, FontWeight.w700,
                  color: AppColors.primary),
            ),
            textAlign: TextAlign.center),
        BottomNavyBarItem(
          // ignore: deprecated_member_use
          icon:  SvgPicture.asset("${AppAssets.rootSVGIcons}/monitoring.svg",fit: BoxFit.fill,height:25.h.h,width:25.h,
              // ignore: deprecated_member_use
              color: AppColors.primary),
          //  SvgPicture.asset(table_chart_outlined
            
          //   "${AppAssets.rootSVGIcons}/sales.svg",fit: BoxFit.fill,height:25.h.h,width:25.h,
          //   // ignore: deprecated_member_use
          //   color: AppColors.primary,
          // ),
          title: Text(
            AppStrings.sales,
            style: AppTextStyles.workSans(13, FontWeight.w700,
                color: AppColors.primary),
          ),
          //textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          // ignore: deprecated_member_use
          icon: SvgPicture.asset("${AppAssets.rootSVGIcons}/employees.svg",fit: BoxFit.fill,height:25.h.h,width:25.h,
              // ignore: deprecated_member_use
              color: AppColors.primary),
          title: Text(
            AppStrings.employee,
            style: AppTextStyles.workSans(13, FontWeight.w700,
                color: AppColors.primary),
          ),
          textAlign: TextAlign.left,
        ),
        BottomNavyBarItem(
          // ignore: deprecated_member_use
          icon:Icon(Icons.table_chart_outlined,size: 25.dm,color: AppColors.primary,),
          
          title: Text(
            AppStrings.monitoring,
            style: AppTextStyles.workSans(13, FontWeight.w700,
                color: AppColors.primary),
          ),
          textAlign: TextAlign.center,
        ),
      ],
      onItemSelected: changeCurrentTab,
      selectedIndex: currentTab,
    );
  }
}
