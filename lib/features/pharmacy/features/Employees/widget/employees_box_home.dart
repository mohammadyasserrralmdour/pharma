import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

class EmployeesBoxHome extends StatelessWidget {
  const EmployeesBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          GoRouter.of(context).push(AppRoutes.EmployeesInformationsScreen),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        height: 120.h,
        decoration: ContainerBoxDecoration.pharmacyBox,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: SvgPicture.asset(
                "${AppAssets.rootSVGImages}/employees.svg",
                fit: BoxFit.fill,
              ),
            ),
            const Expanded(
                flex: 1,
                child: FittedBox(child: TextFont18Wight600(text: "Employess")))
          ],
        ),
      ),
    );
  }
}
